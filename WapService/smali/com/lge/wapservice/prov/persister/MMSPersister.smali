.class public Lcom/lge/wapservice/prov/persister/MMSPersister;
.super Ljava/lang/Object;
.source "MMSPersister.java"


# direct methods
.method public static containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I
    .locals 9
    .param p0, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "contex"    # Landroid/content/Context;

    .prologue
    const/16 v6, 0x100

    .line 35
    iget-object v7, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v8, "w4"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .local v2, "mmsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    if-nez v2, :cond_1

    move v5, v6

    .line 74
    :cond_0
    :goto_0
    return v5

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 39
    .local v3, "mms_num":I
    const/4 v5, 0x0

    .line 40
    .local v5, "ret":I
    if-nez v3, :cond_2

    move v5, v6

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    .line 43
    const/16 v5, 0x10

    goto :goto_0

    .line 45
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/prov/oma/Application;

    .line 49
    .local v0, "application":Lcom/lge/wapservice/prov/oma/Application;
    iget-object v6, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->proxies:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/lge/wapservice/prov/oma/Application;->to_proxy:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lge/wapservice/prov/oma/Proxy;

    .line 50
    .local v4, "proxy":Lcom/lge/wapservice/prov/oma/Proxy;
    if-eqz v4, :cond_7

    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Proxy;->address:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v0, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 52
    :cond_4
    iget-object v6, v0, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 53
    or-int/lit8 v5, v5, 0x10

    .line 45
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 54
    :cond_5
    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 55
    or-int/lit8 v5, v5, 0x10

    goto :goto_2

    .line 57
    :cond_6
    or-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 61
    :cond_7
    iget-object v6, v0, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v6, :cond_9

    .line 62
    iget-object v6, v0, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 63
    or-int/lit8 v5, v5, 0x10

    goto :goto_2

    .line 65
    :cond_8
    or-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 68
    :cond_9
    or-int/lit8 v5, v5, 0x10

    goto :goto_2
.end method

.method public static populateMmsProxy(Landroid/content/ContentValues;Lcom/lge/wapservice/prov/oma/Application;Lcom/lge/wapservice/prov/oma/Proxy;)V
    .locals 2
    .param p0, "contentValues"    # Landroid/content/ContentValues;
    .param p1, "mmsApplication"    # Lcom/lge/wapservice/prov/oma/Application;
    .param p2, "mmsProxy"    # Lcom/lge/wapservice/prov/oma/Proxy;

    .prologue
    .line 79
    if-eqz p2, :cond_0

    .line 81
    const-string v0, "mmsproxy"

    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/Proxy;->address:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "mmsport"

    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p1, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 84
    const-string v0, "mmsc"

    iget-object v1, p1, Lcom/lge/wapservice/prov/oma/Application;->addr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p2, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "mmsc"

    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
