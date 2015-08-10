.class public Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;
.super Lcom/lge/nfcaddon/ICardEmulationAddon$Stub;
.source "LCardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/LCardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LCardEmulationAddonService"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LCardEmulationAddonService"


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/LCardEmulationManager;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-direct {p0}, Lcom/lge/nfcaddon/ICardEmulationAddon$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultRoute()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v0, "LCardEmulationAddonService"

    const-string v1, "getDefaultRoute"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 159
    const-string v0, "LCardEmulationAddonService"

    const-string v1, "mPrefsEditor is null"

    invoke-static {v0, v1}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v0, -0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v1, "default_route"

    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getServices(ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfoGsma;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 199
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 200
    sget-object v0, Lcom/android/nfc/cardemulation/LCardEmulationManager;->sLServiceCache:Lcom/android/nfc/cardemulation/LRegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/LRegisteredServicesCache;->getServicesGsmaForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRoute(I)Z
    .locals 5
    .param p1, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    const-string v2, "LCardEmulationAddonService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultRoute : route("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v2, :cond_0

    .line 170
    const-string v1, "LCardEmulationAddonService"

    const-string v2, "mPrefsEditor is null"

    invoke-static {v1, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefs:Landroid/content/SharedPreferences;

    const-string v3, "default_route"

    iget-object v4, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget v4, v4, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mDefaultRoute:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 175
    const-string v0, "LCardEmulationAddonService"

    const-string v2, "Same as previous default route!!"

    invoke-static {v0, v2}, Lcom/android/nfc/utils/LNfcLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "hcepopup"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 180
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 182
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string v3, "default_route"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 183
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/LCardEmulationManager;->mCEPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    iget-object v2, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setRequireHCEConfirmvalue(Z)V

    .line 187
    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getSysEnable()Z

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/nfc/LNfcVariable;->getCardEnable()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 188
    iget-object v0, p0, Lcom/android/nfc/cardemulation/LCardEmulationManager$LCardEmulationAddonService;->this$0:Lcom/android/nfc/cardemulation/LCardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/LCardEmulationManager;->setDefaultRouteDest(I)V

    :cond_2
    move v0, v1

    .line 192
    goto :goto_0
.end method
