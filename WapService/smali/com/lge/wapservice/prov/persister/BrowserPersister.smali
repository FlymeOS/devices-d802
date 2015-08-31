.class public Lcom/lge/wapservice/prov/persister/BrowserPersister;
.super Ljava/lang/Object;
.source "BrowserPersister.java"


# direct methods
.method public static containsValidSetting(Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;Landroid/content/Context;)I
    .locals 8
    .param p0, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p1, "contex"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x100

    .line 40
    iget-object v6, p0, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v7, "w2"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 42
    .local v1, "browserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    if-nez v1, :cond_1

    move v4, v5

    .line 64
    :cond_0
    :goto_0
    return v4

    .line 46
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 47
    .local v2, "brw_num":I
    const/4 v4, 0x0

    .line 49
    .local v4, "ret":I
    if-nez v2, :cond_2

    move v4, v5

    .line 50
    goto :goto_0

    .line 52
    :cond_2
    const/4 v5, 0x2

    if-lt v2, v5, :cond_3

    .line 53
    const/16 v4, 0x10

    goto :goto_0

    .line 55
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 56
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/prov/oma/Application;

    .line 57
    .local v0, "application":Lcom/lge/wapservice/prov/oma/Application;
    if-eqz v0, :cond_4

    iget-object v5, v0, Lcom/lge/wapservice/prov/oma/Application;->appid:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 58
    or-int/lit8 v4, v4, 0x1

    .line 55
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 60
    :cond_4
    or-int/lit8 v4, v4, 0x10

    goto :goto_2
.end method

.method public static populateBrowserProxy(Landroid/content/Context;Landroid/content/ContentValues;Lcom/lge/wapservice/prov/oma/Proxy;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "browserProxy"    # Lcom/lge/wapservice/prov/oma/Proxy;

    .prologue
    .line 70
    if-eqz p2, :cond_0

    .line 71
    const-string v0, "proxy"

    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/Proxy;->address:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "port"

    iget-object v1, p2, Lcom/lge/wapservice/prov/oma/Proxy;->port:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p2, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p2, Lcom/lge/wapservice/prov/oma/Proxy;->startPage:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {p0, v0, v2, v3}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->saveHomeUrl(Landroid/content/Context;Ljava/lang/String;J)V

    .line 79
    :cond_0
    return-void
.end method

.method public static save(Landroid/content/Context;Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;J)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisioningDocument"    # Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;
    .param p2, "simID"    # J

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-object v8, p1, Lcom/lge/wapservice/prov/oma/WapProvisioningDoc;->applications:Ljava/util/HashMap;

    const-string v9, "w2"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 86
    .local v1, "browserList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lge/wapservice/prov/oma/Application;>;"
    const-string v8, "WapService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[BrowserPersister] save with simID "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v7

    .line 89
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 90
    .local v2, "brw_num":I
    const/4 v5, 0x0

    .line 91
    .local v5, "res_size":I
    if-eqz v2, :cond_0

    .line 94
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/wapservice/prov/oma/Application;

    .line 96
    .local v0, "browserApplication":Lcom/lge/wapservice/prov/oma/Application;
    iget-object v8, v0, Lcom/lge/wapservice/prov/oma/Application;->app_res:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 97
    iget-object v7, v0, Lcom/lge/wapservice/prov/oma/Application;->app_res:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 103
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 105
    iget-object v7, v0, Lcom/lge/wapservice/prov/oma/Application;->app_res:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/wapservice/prov/oma/Resource;

    .line 107
    .local v6, "resource":Lcom/lge/wapservice/prov/oma/Resource;
    iget-object v7, v6, Lcom/lge/wapservice/prov/oma/Resource;->startpage:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 108
    iget-object v7, v6, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    invoke-static {p0, v7, p2, p3}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->saveHomeUrl(Landroid/content/Context;Ljava/lang/String;J)V

    .line 103
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 110
    :cond_2
    invoke-static {v3, v6}, Lcom/lge/wapservice/prov/persister/BrowserPersister;->saveBookmark(Landroid/content/ContentResolver;Lcom/lge/wapservice/prov/oma/Resource;)V

    goto :goto_2

    .line 115
    .end local v6    # "resource":Lcom/lge/wapservice/prov/oma/Resource;
    :cond_3
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private static saveBookmark(Landroid/content/ContentResolver;Lcom/lge/wapservice/prov/oma/Resource;)V
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "res"    # Lcom/lge/wapservice/prov/oma/Resource;

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 119
    const/4 v9, -0x1

    .line 120
    .local v9, "found_id":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 121
    .local v10, "values":Landroid/content/ContentValues;
    new-array v4, v12, [Ljava/lang/String;

    .line 122
    .local v4, "selection_args":[Ljava/lang/String;
    const-string v3, "url = ?"

    .line 123
    .local v3, "where":Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    .line 127
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p1, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    aput-object v0, v4, v11

    .line 128
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, "cursor":Landroid/database/Cursor;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 131
    .local v6, "creationTime":J
    if-eqz v8, :cond_1

    .line 133
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 138
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_1
    iget-object v0, p1, Lcom/lge/wapservice/prov/oma/Resource;->name:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 143
    const-string v0, "title"

    iget-object v1, p1, Lcom/lge/wapservice/prov/oma/Resource;->name:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_2
    :goto_0
    iget-object v0, p1, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 149
    const-string v0, "url"

    iget-object v1, p1, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    if-lez v9, :cond_5

    .line 155
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id = "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v10, v1, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 163
    :cond_3
    :goto_1
    return-void

    .line 138
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 144
    :cond_4
    iget-object v0, p1, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 145
    const-string v0, "title"

    iget-object v1, p1, Lcom/lge/wapservice/prov/oma/Resource;->uri:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_5
    const-string v0, "created"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 158
    const-string v0, "bookmark"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "date"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method public static saveHomeUrl(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "simID"    # J

    .prologue
    .line 169
    const-string v1, "WapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BrowserPersister] saveHomeUrl with simID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lgeWapService.prov.persister.INSTALL_BROWSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "homeuri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-static {}, Lcom/lge/wapservice/utils/DualSIM_Helper;->supportMultiSIM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const-string v1, "simID"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 175
    return-void
.end method
