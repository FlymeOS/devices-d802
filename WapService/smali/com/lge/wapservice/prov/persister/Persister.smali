.class public Lcom/lge/wapservice/prov/persister/Persister;
.super Ljava/lang/Object;
.source "Persister.java"


# static fields
.field private static resultOfAPN:I

.field private static resultOfBrowser:I

.field private static resultOfEmail:I

.field public static resultOfInstall:I

.field private static resultOfSyncMLDM:I

.field private static resultofSyncMLDS:I

.field private static resultofWifi:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultOfInstall:I

    .line 29
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultOfAPN:I

    .line 30
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultOfBrowser:I

    .line 31
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultOfEmail:I

    .line 32
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultOfSyncMLDM:I

    .line 33
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultofSyncMLDS:I

    .line 35
    sput v0, Lcom/lge/wapservice/prov/persister/Persister;->resultofWifi:I

    return-void
.end method

.method public static save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[BI)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p2, "document"    # [B
    .param p3, "simID"    # I

    .prologue
    .line 40
    invoke-static {p3}, Lcom/lge/wapservice/utils/DualSIM_Helper;->getMultiSimSubIdBySlotId(I)J

    move-result-wide v0

    .line 43
    .local v0, "multiSIMSubID":J
    invoke-static {p0, p1, v0, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;J)I

    move-result v2

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfAPN:I

    .line 46
    invoke-static {p0, p1, v0, v1}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;J)I

    move-result v2

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfBrowser:I

    .line 49
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/EmailPersister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)I

    move-result v2

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfEmail:I

    .line 52
    invoke-static {p0, p1, p2}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[B)I

    move-result v2

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfSyncMLDM:I

    .line 55
    invoke-static {p0, p1, p2}, Lcom/lge/wapservice/prov/persister/SyncMLDSPersister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[B)I

    move-result v2

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultofSyncMLDS:I

    .line 59
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/WiFiPersister;->save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)I

    move-result v2

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultofWifi:I

    .line 63
    sget v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfAPN:I

    sget v3, Lcom/lge/wapservice/prov/persister/Persister;->resultOfBrowser:I

    or-int/2addr v2, v3

    sget v3, Lcom/lge/wapservice/prov/persister/Persister;->resultOfEmail:I

    or-int/2addr v2, v3

    sget v3, Lcom/lge/wapservice/prov/persister/Persister;->resultOfSyncMLDM:I

    or-int/2addr v2, v3

    sget v3, Lcom/lge/wapservice/prov/persister/Persister;->resultofSyncMLDS:I

    or-int/2addr v2, v3

    sget v3, Lcom/lge/wapservice/prov/persister/Persister;->resultofWifi:I

    or-int/2addr v2, v3

    sput v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfInstall:I

    .line 68
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultOfAPN = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultOfAPN:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultOfBrowser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultOfBrowser:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultOfEmail = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultOfEmail:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultOfSyncMLDM = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultOfSyncMLDM:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultofSyncMLDS = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultofSyncMLDS:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultofWifi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultofWifi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v2, "WapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " resultOfInstall === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/lge/wapservice/prov/persister/Persister;->resultOfInstall:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 77
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 78
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 79
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 80
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 82
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->wlanList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 85
    sget v2, Lcom/lge/wapservice/prov/persister/Persister;->resultOfInstall:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    .line 86
    const-string v2, "WapService"

    const-string v3, " ==INSTALL FAIL=="

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 90
    :cond_0
    const-string v2, "WapService"

    const-string v3, " ==INSTALL SUCCESS=="

    invoke-static {v2, v3}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v2, 0x1

    goto :goto_0
.end method
