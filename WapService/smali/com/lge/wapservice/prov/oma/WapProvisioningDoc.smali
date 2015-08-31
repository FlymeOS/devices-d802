.class public Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
.super Ljava/lang/Object;
.source "WapProvisioningDoc.java"


# instance fields
.field public accesspoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wapservice/prov/oma/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field public applications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field public isValidApn:I

.field public isValidBrowser:I

.field public isValidDocument:I

.field public isValidEmail:I

.field public isValidMMS:I

.field public isValidSyncMLDM:I

.field public isValidSyncMLDS:I

.field public isValidWiFi:I

.field public mcc:Ljava/lang/String;

.field public mnc:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public onlyNapdefList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wapservice/prov/oma/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field public onlyProxyNapdefNoAppID:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wapservice/prov/oma/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public proxies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wapservice/prov/oma/Proxy;",
            ">;"
        }
    .end annotation
.end field

.field public validLength:Z

.field public wlanList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/wapservice/prov/oma/AccessPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->wlanList:Ljava/util/HashMap;

    .line 57
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidBrowser:I

    .line 59
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidMMS:I

    .line 61
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidEmail:I

    .line 63
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDS:I

    .line 65
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDM:I

    .line 67
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidDocument:I

    .line 69
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidApn:I

    .line 72
    iput v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidWiFi:I

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->validLength:Z

    return-void
.end method


# virtual methods
.method public checkDocumentValid(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidBrowser:I

    .line 93
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validBrowser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidBrowser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/MMSPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidMMS:I

    .line 95
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validMMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidMMS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/EmailPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidEmail:I

    .line 97
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validEmail = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidEmail:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/SyncMLDSPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDS:I

    .line 99
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validSyncMLDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDM:I

    .line 101
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validSyncMLDM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidApn:I

    .line 103
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validApn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidApn:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/WiFiPersister;->containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidWiFi:I

    .line 106
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validWifi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidWiFi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidBrowser:I

    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidMMS:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidEmail:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDS:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidSyncMLDM:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidApn:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidWiFi:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidDocument:I

    .line 111
    const-string v0, "WapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDocumentValid() validDocument = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidDocument:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public initHni(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x3

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "numeric":Ljava/lang/String;
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 127
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getSimID()I

    move-result v2

    invoke-static {v2}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-le v2, v3, :cond_3

    .line 136
    iget-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    .line 138
    :cond_1
    iget-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    .line 141
    :cond_3
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[[KOH]] initHni : mcc= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mcc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mnc = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->mnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 130
    :cond_4
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 132
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isDocumentValid()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 79
    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidDocument:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    .line 80
    const-string v1, "WapService"

    const-string v2, "isDocumentValid() not supported setting"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return v0

    .line 83
    :cond_0
    iget v1, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->isValidDocument:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    .line 84
    const-string v0, "WapService"

    const-string v1, "isDocumentValid() valid setting"

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_1
    const-string v1, "WapService"

    const-string v2, "isDocumentValid() invalid setting"

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
