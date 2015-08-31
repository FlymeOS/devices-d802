.class public Lcom/lge/wapservice/prov/persister/ApnPersister;
.super Ljava/lang/Object;
.source "ApnPersister.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;
    }
.end annotation


# static fields
.field private static LOG_LEVEL:I

.field private static LOG_TAG:Ljava/lang/String;

.field private static mSubId:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x5

    sput v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_LEVEL:I

    .line 56
    const-string v0, "[ApnPersister]"

    sput-object v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_TAG:Ljava/lang/String;

    .line 58
    const-wide/16 v0, -0x3e8

    sput-wide v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 46
    sget-wide v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J

    return-wide v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public static containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I
    .locals 5
    .param p0, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "contex"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v3, 0x0

    .line 63
    .local v3, "ret":I
    const/4 v1, 0x0

    .line 64
    .local v1, "apnNum":I
    iget-object v4, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 66
    if-nez v1, :cond_0

    .line 67
    const/16 v4, 0x100

    .line 79
    :goto_0
    return v4

    .line 70
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 71
    iget-object v4, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    aget-object v0, v4, v2

    check-cast v0, Lcom/lge/wapservice/prov/oma/AccessPoint;

    .line 73
    .local v0, "accessPoint":Lcom/lge/wapservice/prov/oma/AccessPoint;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/lge/wapservice/prov/oma/AccessPoint;->isValid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    or-int/lit8 v3, v3, 0x1

    .line 70
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 76
    :cond_1
    or-int/lit8 v3, v3, 0x10

    goto :goto_2

    .end local v0    # "accessPoint":Lcom/lge/wapservice/prov/oma/AccessPoint;
    :cond_2
    move v4, v3

    .line 79
    goto :goto_0
.end method

.method private static getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;
    .locals 4
    .param p0, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "app"    # Lcom/lge/wapservice/prov/oma/Application;

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 85
    .local v1, "napId":Ljava/lang/String;
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 86
    iget-object v1, p1, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    .line 97
    :cond_0
    :goto_0
    return-object v1

    .line 87
    :cond_1
    iget-object v2, p1, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/prov/oma/Proxy;

    .line 90
    .local v0, "browserProxy":Lcom/lge/wapservice/prov/oma/Proxy;
    if-eqz v0, :cond_2

    .line 91
    iget-object v1, v0, Lcom/lge/wapservice/prov/oma/Proxy;->to_napid:Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_2
    const-string v2, "Due to Failure to Retrieve Browser Proxy, browser_napid cannot be defined"

    invoke-static {v2}, Lcom/lge/wapservice/prov/persister/ApnPersister;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 1119
    sget v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_LEVEL:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 1120
    sget-object v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_0
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 1109
    sget v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 1110
    sget-object v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    return-void
.end method

.method private static logi(Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 1129
    sget v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_LEVEL:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 1130
    sget-object v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_0
    return-void
.end method

.method private static logw(Ljava/lang/String;)V
    .locals 2
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 1114
    sget v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1115
    sget-object v0, Lcom/lge/wapservice/prov/persister/ApnPersister;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_0
    return-void
.end method

.method public static save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;J)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p2, "subId"    # J

    .prologue
    .line 223
    invoke-static {p2, p3}, Landroid/telephony/SubscriptionManager;->isValidSubId(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[save] invalid subid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V

    .line 225
    const/16 v0, 0x10

    .line 234
    :goto_0
    return v0

    .line 228
    :cond_0
    sput-wide p2, Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[save] slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/lge/wapservice/prov/persister/ApnPersister;->mSubId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logd(Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->updateApnWithAppId(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)V

    .line 232
    invoke-static {p0, p1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->updateApnWithoutAppId(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)V

    .line 234
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static updateApnWithAppId(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    .prologue
    .line 101
    const/4 v2, 0x0

    .line 102
    .local v2, "browserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const/4 v9, 0x0

    .line 105
    .local v9, "mmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const/4 v5, 0x0

    .line 108
    .local v5, "fotaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    if-eqz v11, :cond_0

    .line 109
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v12, "w2"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "browserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 110
    .restart local v2    # "browserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v12, "w4"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "mmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 112
    .restart local v9    # "mmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v12, "w7"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "fotaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    check-cast v5, Ljava/util/ArrayList;

    .line 116
    .restart local v5    # "fotaList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    :cond_0
    const/4 v1, 0x0

    .line 117
    .local v1, "browserApplication":Lcom/lge/wapservice/prov/oma/Application;
    const/4 v8, 0x0

    .line 120
    .local v8, "mmsApplication":Lcom/lge/wapservice/prov/oma/Application;
    const/4 v4, 0x0

    .line 123
    .local v4, "fotaApplication":Lcom/lge/wapservice/prov/oma/Application;
    if-eqz v2, :cond_2

    .line 124
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_2

    .line 125
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "browserApplication":Lcom/lge/wapservice/prov/oma/Application;
    check-cast v1, Lcom/lge/wapservice/prov/oma/Application;

    .line 126
    .restart local v1    # "browserApplication":Lcom/lge/wapservice/prov/oma/Application;
    invoke-static {p1, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "browser_napid":Ljava/lang/String;
    const-string v12, "default"

    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-static {p0, v12, p1, v11, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Application;)Landroid/content/ContentValues;

    move-result-object v0

    .line 130
    .local v0, "ap":Landroid/content/ContentValues;
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    iget-object v12, v1, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-static {p1, v1}, Lcom/lge/wapservice/prov/persister/ApnPersister;->getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->updateDefaultProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 124
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const-string v11, "[updateApnWithAppId] failed to make Default Profile"

    invoke-static {v11}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v3    # "browser_napid":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_2
    if-eqz v9, :cond_4

    .line 139
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_4

    .line 140
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "mmsApplication":Lcom/lge/wapservice/prov/oma/Application;
    check-cast v8, Lcom/lge/wapservice/prov/oma/Application;

    .line 141
    .restart local v8    # "mmsApplication":Lcom/lge/wapservice/prov/oma/Application;
    invoke-static {p1, v8}, Lcom/lge/wapservice/prov/persister/ApnPersister;->getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;

    move-result-object v10

    .line 143
    .local v10, "mms_napid":Ljava/lang/String;
    const-string v12, "mms"

    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-static {p0, v12, p1, v11, v8}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Application;)Landroid/content/ContentValues;

    move-result-object v0

    .line 146
    .restart local v0    # "ap":Landroid/content/ContentValues;
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    iget-object v12, v8, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-static {p1, v8}, Lcom/lge/wapservice/prov/persister/ApnPersister;->getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-eqz v0, :cond_3

    .line 150
    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->updateMMSProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 139
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 152
    :cond_3
    const-string v11, "[updateApnWithAppId] failed to make MMS Profile"

    invoke-static {v11}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    goto :goto_3

    .line 158
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v7    # "i":I
    .end local v10    # "mms_napid":Ljava/lang/String;
    :cond_4
    if-eqz v5, :cond_6

    const-string v11, "26201"

    const/4 v12, 0x0

    invoke-static {v12}, Lcom/lge/telephony/provider/TelephonyProxy$Carriers;->getNumeric(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 159
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_6

    .line 160
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "fotaApplication":Lcom/lge/wapservice/prov/oma/Application;
    check-cast v4, Lcom/lge/wapservice/prov/oma/Application;

    .line 161
    .restart local v4    # "fotaApplication":Lcom/lge/wapservice/prov/oma/Application;
    invoke-static {p1, v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;

    move-result-object v6

    .line 162
    .local v6, "fota_napid":Ljava/lang/String;
    const-string v12, "fota"

    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    invoke-virtual {v11, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lge/wapservice/prov/oma/AccessPoint;

    invoke-static {p0, v12, p1, v11, v4}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Application;)Landroid/content/ContentValues;

    move-result-object v0

    .line 165
    .restart local v0    # "ap":Landroid/content/ContentValues;
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    iget-object v12, v4, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v11, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-static {p1, v4}, Lcom/lge/wapservice/prov/persister/ApnPersister;->getNapId(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/Application;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    if-eqz v0, :cond_5

    .line 169
    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->updateFotaProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 159
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 171
    :cond_5
    const-string v11, "[updateApnWithAppId] failed to make Fota Profile"

    invoke-static {v11}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    goto :goto_5

    .line 176
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v6    # "fota_napid":Ljava/lang/String;
    .end local v7    # "i":I
    :cond_6
    return-void
.end method

.method private static updateApnWithoutAppId(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDoc"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;

    .prologue
    .line 179
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    .line 182
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    monitor-enter v8

    .line 183
    :try_start_0
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/wapservice/prov/oma/Proxy;

    .line 186
    .local v6, "proxy":Lcom/lge/wapservice/prov/oma/Proxy;
    if-eqz v6, :cond_1

    .line 187
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->accesspoints:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/lge/wapservice/prov/oma/Proxy;->to_napid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wapservice/prov/oma/AccessPoint;

    .line 188
    .local v1, "apn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    const-string v7, "default"

    invoke-static {p0, v7, p1, v1, v6}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Proxy;)Landroid/content/ContentValues;

    move-result-object v0

    .line 190
    .local v0, "ap":Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->updateDefaultProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 193
    :goto_1
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/lge/wapservice/prov/oma/Proxy;->to_napid:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v1    # "apn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    :goto_2
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyProxyNapdefNoAppID:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 200
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "proxy":Lcom/lge/wapservice/prov/oma/Proxy;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 191
    .restart local v0    # "ap":Landroid/content/ContentValues;
    .restart local v1    # "apn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v6    # "proxy":Lcom/lge/wapservice/prov/oma/Proxy;
    :cond_0
    :try_start_1
    const-string v7, "[updateApnWithoutAppId] failed to make Profile"

    invoke-static {v7}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 195
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v1    # "apn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    :cond_1
    const-string v7, "[updateApnWithoutAppId] Proxy is null"

    invoke-static {v7}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    goto :goto_2

    .line 200
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "proxy":Lcom/lge/wapservice/prov/oma/Proxy;
    :cond_2
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    const/4 v4, 0x0

    .line 203
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 206
    iget-object v8, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    monitor-enter v8

    .line 207
    :try_start_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .restart local v3    # "key":Ljava/lang/String;
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/wapservice/prov/oma/AccessPoint;

    .line 209
    .local v5, "onlyApn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    const-string v9, "default"

    const/4 v7, 0x0

    check-cast v7, Lcom/lge/wapservice/prov/oma/Proxy;

    invoke-static {p0, v9, p1, v5, v7}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->make(Landroid/content/Context;Ljava/lang/String;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Lcom/lge/wapservice/prov/oma/AccessPoint;Lcom/lge/wapservice/prov/oma/Proxy;)Landroid/content/ContentValues;

    move-result-object v0

    .line 211
    .restart local v0    # "ap":Landroid/content/ContentValues;
    if-eqz v0, :cond_3

    .line 212
    invoke-static {p0, v0}, Lcom/lge/wapservice/prov/persister/ApnPersister$AccessPointAdapter;->updateDefaultProfiles(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 217
    :goto_4
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->onlyNapdefList:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 219
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "onlyApn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 214
    .restart local v0    # "ap":Landroid/content/ContentValues;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "onlyApn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    :cond_3
    :try_start_3
    const-string v7, "[updateApnWithoutAppId] failed to make Profile"

    invoke-static {v7}, Lcom/lge/wapservice/prov/persister/ApnPersister;->logw(Ljava/lang/String;)V

    goto :goto_4

    .line 219
    .end local v0    # "ap":Landroid/content/ContentValues;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "onlyApn":Lcom/lge/wapservice/prov/oma/AccessPoint;
    :cond_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 220
    return-void
.end method
