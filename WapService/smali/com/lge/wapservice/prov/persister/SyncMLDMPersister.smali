.class public Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;
.super Ljava/lang/Object;
.source "SyncMLDMPersister.java"


# static fields
.field private static isAuthtypeNull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isAuthtypeNull:Z

    return-void
.end method

.method public static containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I
    .locals 11
    .param p0, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x100

    const/4 v8, 0x1

    const/16 v7, 0x10

    .line 124
    iget-object v9, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v10, "w7"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 126
    .local v0, "SyncMLDMAppList":Ljava/util/ArrayList;
    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return v6

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 131
    .local v5, "syncmldm_num":I
    if-eqz v5, :cond_0

    .line 136
    invoke-static {p1}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isSoftwareUpdateEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eq v6, v8, :cond_2

    .line 138
    const-string v6, "SyncMLDMPersister"

    const-string v7, "<containsValidSetting> DM does not support"

    invoke-static {v6, v7}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/16 v6, 0x1000

    goto :goto_0

    .line 144
    :cond_2
    const-string v6, "SyncMLDMPersister"

    const-string v9, "<containsValidSetting> DM Profile"

    invoke-static {v6, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wapservice/prov/oma/Application;

    .line 158
    .local v4, "syncmldmApp":Lcom/lge/wapservice/prov/oma/Application;
    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    const-string v6, "SyncMLDMPersister"

    const-string v8, "otaData.provider_id is null "

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 162
    goto :goto_0

    .line 165
    :cond_3
    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 167
    const-string v6, "SyncMLDMPersister"

    const-string v8, "otaData.addr is null "

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 169
    goto :goto_0

    .line 172
    :cond_4
    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 174
    const-string v6, "SyncMLDMPersister"

    const-string v8, "otaData.port is null "

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 176
    goto :goto_0

    .line 180
    :cond_5
    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 183
    .local v2, "appauthSize":I
    const-string v6, "SyncMLDMPersister"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<containsValidSetting> appauth size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    if-gt v2, v8, :cond_6

    .line 188
    const-string v6, "SyncMLDMPersister"

    const-string v8, "appauthSize is not enough "

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 190
    goto :goto_0

    .line 193
    :cond_6
    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 194
    .local v1, "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 196
    const-string v6, "SyncMLDMPersister"

    const-string v8, "authlevel is null "

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 198
    goto/16 :goto_0

    .line 201
    :cond_8
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    const-string v9, "APPSRV"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    const-string v9, "CLIENT"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 203
    const-string v6, "SyncMLDMPersister"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "authlevel is invalid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 205
    goto/16 :goto_0

    .line 208
    :cond_9
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    const-string v9, "APPSRV"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 209
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 211
    const-string v6, "SyncMLDMPersister"

    const-string v9, "APPSRV: authtype is null"

    invoke-static {v6, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v6, "BASIC"

    iput-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    .line 217
    const-string v6, "SyncMLDMPersister"

    const-string v9, "APPSRV: authtype is set with BASIC by default"

    invoke-static {v6, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_a
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 223
    const-string v6, "SyncMLDMPersister"

    const-string v8, "APPSRV: authname is null"

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 224
    goto/16 :goto_0

    .line 227
    :cond_b
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 229
    const-string v6, "SyncMLDMPersister"

    const-string v8, "APPSRV: authsercret is null"

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 231
    goto/16 :goto_0

    .line 234
    :cond_c
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 236
    const-string v6, "SyncMLDMPersister"

    const-string v8, "APPSRV: authdata is null"

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 238
    goto/16 :goto_0

    .line 241
    :cond_d
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 243
    const-string v6, "SyncMLDMPersister"

    const-string v9, "CLIENT: authtype is null"

    invoke-static {v6, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v6, "BASIC"

    iput-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    .line 251
    :cond_e
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 253
    const-string v6, "SyncMLDMPersister"

    const-string v8, "CLIENT: authname is null"

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 255
    goto/16 :goto_0

    .line 258
    :cond_f
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 260
    const-string v6, "SyncMLDMPersister"

    const-string v8, "CLIENT: authsercret is null"

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_10
    iget-object v6, v1, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 266
    const-string v6, "SyncMLDMPersister"

    const-string v8, "CLIENT: authdata is null"

    invoke-static {v6, v8}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 268
    goto/16 :goto_0

    .end local v1    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    :cond_11
    move v6, v8

    .line 274
    goto/16 :goto_0
.end method

.method private static isNull(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 810
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    :cond_0
    const/4 v0, 0x1

    .line 813
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSoftwareUpdateEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 834
    const/4 v0, 0x1

    return v0
.end method

.method public static populateSyncMLDM(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/Application;)Landroid/os/Bundle;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "otaData"    # Lcom/lge/wapservice/prov/oma/Application;

    .prologue
    const/4 v6, 0x1

    .line 404
    const-string v3, "SyncMLDMPersister"

    const-string v4, "populateSyncMLDM Start"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v1, "dmacc":Landroid/os/Bundle;
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v6, :cond_0

    .line 412
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otaData.provider_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const-string v3, "SERVERID"

    iget-object v4, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v6, :cond_1

    .line 418
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otaData.name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/wapservice/prov/oma/Application;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v3, "NAME"

    iget-object v4, p1, Lcom/lge/wapservice/prov/oma/Application;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_1
    const-string v3, "PREFCONREF"

    const-string v4, "ConRef-100"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v6, :cond_2

    .line 428
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otaData.addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const-string v3, "ADDR"

    iget-object v4, p1, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_2
    const-string v3, "ADDRTYPE"

    const-string v4, "URI"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v6, :cond_4

    .line 438
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otaData.port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const-string v3, "PORTNBR"

    iget-object v4, p1, Lcom/lge/wapservice/prov/oma/Application;->port:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_0
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<save> appauth :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->appauth:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/prov/oma/AppAuth;

    .line 457
    .local v0, "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    const-string v4, "Cingular"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    const-string v4, "ATTLabA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    const-string v4, "mform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->provider_id:Ljava/lang/String;

    const-string v4, "funambol"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 461
    :cond_3
    iget-object v3, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    const-string v4, "APPSRV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 463
    const-string v3, "CLIENT_AUTHTYPE"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v3, "CLIENT_AUTHNAME"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v3, "CLIENT_AUTHSECRET"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v3, "CLIENT_AUTHDATA"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<save> It\'s swapped. For CLIENT, appauth type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appauth name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appauth secret :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 443
    .end local v0    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v3, "SyncMLDMPersister"

    const-string v4, "default otaData.port = 8080"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v3, "PORTNBR"

    const-string v4, "8080"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    .restart local v0    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    const-string v3, "APPSRV_AUTHTYPE"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    const-string v3, "APPSRV_AUTHNAME"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v3, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 478
    const-string v3, "APPSRV_AUTHSECRET"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :cond_6
    const-string v3, "APPSRV_AUTHDATA"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<save> It\'s swapped. For APPSRV, appauth type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appauth name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appauth secret :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 490
    :cond_7
    iget-object v3, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authlevel:Ljava/lang/String;

    const-string v4, "APPSRV"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 492
    const-string v3, "APPSRV_AUTHTYPE"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v3, "APPSRV_AUTHNAME"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v3, "APPSRV_AUTHSECRET"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const-string v3, "APPSRV_AUTHDATA"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<save> It\'s non-swapped. For APPSRV, appauth type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appauth name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appauth secret :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 504
    :cond_8
    const-string v3, "CLIENT_AUTHTYPE"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v3, "CLIENT_AUTHNAME"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v3, "CLIENT_AUTHSECRET"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v3, "CLIENT_AUTHDATA"

    iget-object v4, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authdata:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<save> It\'s non-swapped. For CLIENT, appauth type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authtype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", appauth name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authname:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appauth secret :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/AppAuth;->authsercret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 520
    .end local v0    # "appauth":Lcom/lge/wapservice/prov/oma/AppAuth;
    :cond_9
    iget-object v3, p1, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    invoke-static {v3}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eq v3, v6, :cond_a

    .line 522
    const-string v3, "SyncMLDMPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "otaData.to_napid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const-string v3, "CONREF"

    iget-object v4, p1, Lcom/lge/wapservice/prov/oma/Application;->to_napid:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_a
    const-string v3, "SyncMLDMPersister"

    const-string v4, "<save> end >>"

    invoke-static {v3, v4}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-object v1
.end method

.method public static save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[B)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p2, "mDocument"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 280
    iget-object v7, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v8, "w7"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 284
    .local v3, "syncmldmList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const-string v7, "SyncMLDMPersister"

    const-string v8, "<save> start >>"

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    if-nez v3, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v5

    .line 295
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 297
    .local v4, "syncmldm_num":I
    if-eqz v4, :cond_0

    .line 301
    invoke-static {p0}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->isSoftwareUpdateEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eq v7, v6, :cond_2

    .line 303
    const-string v5, "SyncMLDMPersister"

    const-string v6, "<save> DM does not support"

    invoke-static {v5, v6}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v5, 0x10

    goto :goto_0

    .line 310
    :cond_2
    const-string v7, "SyncMLDMPersister"

    const-string v8, "<save> num"

    invoke-static {v7, v8}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/wapservice/prov/oma/Application;

    .line 383
    .local v2, "syncmldmApp":Lcom/lge/wapservice/prov/oma/Application;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.lge.omadmclient.ACTION_RECV_WAP_BOOTSTRAP_CP"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, "intent":Landroid/content/Intent;
    const-string v7, "com.lge.omadmclient.isFactoryAccount"

    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 385
    const-string v5, "com.lge.omadmclient.bootstrap_msg"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 387
    if-eqz v2, :cond_3

    .line 388
    invoke-static {p0, v2}, Lcom/lge/wapservice/prov/persister/SyncMLDMPersister;->populateSyncMLDM(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/Application;)Landroid/os/Bundle;

    move-result-object v0

    .line 389
    .local v0, "dmacc":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 392
    .end local v0    # "dmacc":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v5, v6

    .line 395
    goto :goto_0
.end method
