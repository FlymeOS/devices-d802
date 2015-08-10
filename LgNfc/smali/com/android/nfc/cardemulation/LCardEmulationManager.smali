.class public Lcom/android/nfc/cardemulation/LCardEmulationManager;
.super Lcom/android/nfc/cardemulation/CardEmulationManager;
.source "LCardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;
    }
.end annotation


# static fields
.field protected static final CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

.field protected static final CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

.field static final DEFAULT_ROUTE_DEFAULT:I = -0x1

.field public static final PREF:Ljava/lang/String; = "NfcServiceCEPrefs"

.field static final PREF_DEFAULT_ROUTE:Ljava/lang/String; = "default_route"

.field public static final PREF_KK:Ljava/lang/String; = "NfcServicePrefs"

.field static final TAG:Ljava/lang/String; = "LCardEmulationManager"

.field static mDefaultRouteDest:I

.field static mRouteNumber:I

.field public static sLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

.field public static sLTapAgainDialogEnalbed:Z

.field protected static sService:Lcom/android/nfc/cardemulation/LCardEmulationManager;


# instance fields
.field public mCEPrefs:Landroid/content/SharedPreferences;

.field public mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field public mCardEmulationAddonService:Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

.field public mDefaultRoute:I

.field protected mHCERequireSetting:Z

.field public mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

.field public mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xf3

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRouteDest:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mRouteNumber:I

    .line 78
    invoke-static {}, Lcom/lge/nfcconfig/NfcConfigure;->getInstance()Lcom/lge/nfcconfig/NfcConfigure;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    .line 79
    invoke-static {}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->getInstance()Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    .line 85
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLTapAgainDialogEnalbed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>()V

    .line 68
    const/16 v0, 0xf3

    iput v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mHCERequireSetting:Z

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 94
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>()V

    .line 68
    const/16 v2, 0xf3

    iput v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mHCERequireSetting:Z

    .line 95
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    .line 97
    new-instance v2, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

    invoke-direct {v2, p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;-><init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCardEmulationAddonService:Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;

    .line 99
    const-string v2, "NfcServiceCEPrefs"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    .line 100
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 102
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    const-string v4, "host"

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsHCEConfig(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 103
    iput v6, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    .line 108
    :goto_0
    const-string v2, "NfcServicePrefs"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 109
    .local v1, "prefs_kk":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 110
    .local v0, "prefsEditor_kk":Landroid/content/SharedPreferences$Editor;
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 111
    const-string v2, "default_route"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "LCardEmulationManager"

    const-string v3, "Setting CE Pref. as Previous OS Pref. - Default Route"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_route"

    const-string v4, "default_route"

    iget v5, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 115
    const-string v2, "LCardEmulationManager"

    const-string v3, "Remove Previous OS Pref. - Default Route"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v2, "default_route"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 119
    :cond_0
    const-string v2, "hcepopup"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    const-string v2, "LCardEmulationManager"

    const-string v3, "Setting CE Pref. as Previous OS Pref. - HCE Popup"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "hcepopup"

    const-string v4, "hcepopup"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 122
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    const-string v2, "LCardEmulationManager"

    const-string v3, "Remove Previous OS Pref. - HCE Popup"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "hcepopup"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 145
    :cond_1
    :goto_1
    return-void

    .line 105
    .end local v0    # "prefsEditor_kk":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs_kk":Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v2

    iput v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    goto :goto_0

    .line 129
    .restart local v0    # "prefsEditor_kk":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs_kk":Landroid/content/SharedPreferences;
    :cond_3
    if-nez v1, :cond_4

    .line 130
    const-string v2, "LCardEmulationManager"

    const-string v3, "prefs_kk is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    if-nez v0, :cond_1

    .line 133
    const-string v2, "LCardEmulationManager"

    const-string v3, "prefsEditor_kk is null"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/nfc/cardemulation/LCardEmulationManager;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sService:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    return-object v0
.end method


# virtual methods
.method public native doSetDefaultDest(I)V
.end method

.method public getDefaultRoute()I
    .locals 3

    .prologue
    .line 256
    const-string v0, "LCardEmulationManager"

    const-string v1, "getDefaultRoute"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 259
    const-string v0, "LCardEmulationManager"

    const-string v1, "mPrefsEditor is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v0, -0x1

    .line 262
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route"

    iget v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHceAppCount()I
    .locals 7

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "hostAppNum":I
    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "apduSrvList":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 311
    .local v3, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    add-int/lit8 v1, v1, 0x1

    .line 312
    goto :goto_0

    .line 313
    .end local v3    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_0
    const-string v4, "LCardEmulationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHceAppCount hostAppNum : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    return v1
.end method

.method public getOffHostRoute()I
    .locals 2

    .prologue
    .line 226
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->uicc:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_0

    .line 227
    const-string v0, "LCardEmulationManager"

    const-string v1, "getOffHostRoute() - UICC default"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/16 v0, 0xf3

    .line 235
    :goto_0
    return v0

    .line 230
    :cond_0
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CONFIG:Lcom/lge/nfcconfig/NfcConfigure;

    iget-object v0, v0, Lcom/lge/nfcconfig/NfcConfigure;->mSecureElementType:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    sget-object v1, Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;->ese:Lcom/lge/nfcconfig/NfcConfigure$SecureElementList;

    if-ne v0, v1, :cond_1

    .line 231
    const-string v0, "LCardEmulationManager"

    const-string v1, "getOffHostRoute() - ESE default"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/16 v0, 0xf4

    goto :goto_0

    .line 234
    :cond_1
    const-string v0, "LCardEmulationManager"

    const-string v1, "getOffHostRoute() - HOST default"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefHcePopupvalue()Z
    .locals 4

    .prologue
    .line 302
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hcepopup"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 303
    .local v0, "rtn":Z
    const-string v1, "LCardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrefHcePopupvalue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return v0
.end method

.method public getRequireHCEConfirmvalue()Z
    .locals 4

    .prologue
    .line 287
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hceconfirm"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 288
    .local v0, "mHCEBtn":Z
    const-string v1, "LCardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRequireHCEConfirmvalue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return v0
.end method

.method protected initDefaultRoutePath(I)V
    .locals 3
    .param p1, "route"    # I

    .prologue
    .line 239
    const-string v0, "LCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDefaultRoutePath() - route : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mLAidCache:Lcom/android/nfc/cardemulation/LRegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LRegisteredAidCache;->setDefaultDest(I)V

    .line 242
    monitor-exit p0

    .line 244
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method initRoutingPath()V
    .locals 4

    .prologue
    .line 266
    const-string v1, "LCardEmulationManager"

    const-string v2, "initRoutingPath()"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v2, "default_route"

    iget v3, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 269
    .local v0, "route":I
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->doSetDefaultDest(I)V

    .line 272
    .end local v0    # "route":I
    :cond_0
    return-void
.end method

.method initRoutingTable(I)V
    .locals 5
    .param p1, "route"    # I

    .prologue
    .line 275
    const-string v2, "LCardEmulationManager"

    const-string v3, "-- initRoutingTable()"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :try_start_0
    sget-object v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->CECONFIG:Lcom/android/nfc/cardemulation/LCardEmulationConfig;

    sget-object v3, Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;->screen_unlocked:Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getHceAppCount()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/nfc/cardemulation/LCardEmulationConfig;->IsRoutingOffHost(Lcom/lge/nfcconfig/NfcConfigure$HCEScreenStateList;I)Z

    move-result v1

    .line 278
    .local v1, "routingOffhost":Z
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getOffHostRoute()I

    move-result v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->doSetDefaultDest(I)V

    .line 282
    .end local v1    # "routingOffhost":Z
    :goto_1
    return-void

    .line 278
    .restart local v1    # "routingOffhost":Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->getDefaultRoute()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 279
    .end local v1    # "routingOffhost":Z
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LCardEmulationManager"

    const-string v3, "initRoutingTable() - Exception"

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setDefaultRouteDest(I)V
    .locals 2
    .param p1, "route"    # I

    .prologue
    .line 247
    const-string v0, "LCardEmulationManager"

    const-string v1, "setDefaultRouteDest()"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-super {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 250
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->initDefaultRoutePath(I)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->doSetDefaultDest(I)V

    .line 252
    invoke-super {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 253
    return-void
.end method

.method public setRequireHCEConfirmvalue(Z)V
    .locals 3
    .param p1, "setvalue"    # Z

    .prologue
    .line 295
    const-string v0, "LCardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequireHCEConfirmvalue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hceconfirm"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    return-void
.end method
