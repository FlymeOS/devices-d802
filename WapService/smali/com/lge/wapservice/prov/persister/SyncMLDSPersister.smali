.class public Lcom/lge/wapservice/prov/persister/SyncMLDSPersister;
.super Ljava/lang/Object;
.source "SyncMLDSPersister.java"


# direct methods
.method public static containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I
    .locals 5
    .param p0, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "contex"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x100

    .line 47
    iget-object v3, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v4, "w5"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 49
    .local v0, "SyncMLDSAppList":Ljava/util/ArrayList;
    if-nez v0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v2

    .line 53
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 55
    .local v1, "syncmlds_num":I
    if-eqz v1, :cond_0

    .line 60
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;[B)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p2, "document"    # [B

    .prologue
    .line 64
    const-string v4, "ro.build.target_operator"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "operator":Ljava/lang/String;
    const-string v4, "TMO"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 68
    const-string v4, "SyncMLDSPersister"

    const-string v5, "<save> MyPhonebook start >>"

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v4, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v5, "w5"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 70
    .local v2, "syncmlDsAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const/4 v3, 0x0

    .line 71
    .local v3, "syncmlDsAppNum":I
    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 74
    :cond_0
    const-string v4, "SyncMLDSPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<save> syncmlDsApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    if-nez v3, :cond_1

    .line 76
    const/4 v4, 0x0

    .line 84
    .end local v2    # "syncmlDsAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    .end local v3    # "syncmlDsAppNum":I
    :goto_0
    return v4

    .line 78
    .restart local v2    # "syncmlDsAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    .restart local v3    # "syncmlDsAppNum":I
    :cond_1
    const-string v4, "SyncMLDSPersister"

    const-string v5, "<save> sendBroadcast to MyPhonebook"

    invoke-static {v4, v5}, Lcom/lge/wapservice/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.lge.myphonebook.RDM_CP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "data"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 81
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "syncmlDsAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    .end local v3    # "syncmlDsAppNum":I
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method
