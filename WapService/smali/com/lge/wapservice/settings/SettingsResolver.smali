.class public Lcom/lge/wapservice/settings/SettingsResolver;
.super Ljava/lang/Object;
.source "SettingsResolver.java"


# static fields
.field public static final SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "content://com.lge.wapservice.provider.settings/settings/key"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/wapservice/settings/SettingsResolver;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getReceiveServiceMessage(Landroid/content/ContentResolver;)Z
    .locals 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 60
    const/4 v6, 0x0

    .line 62
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/lge/wapservice/settings/SettingsResolver;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "message_receive"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 64
    if-eqz v6, :cond_1

    .line 65
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, "value":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 71
    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 71
    :cond_1
    if-eqz v6, :cond_2

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getServiceLoadingType(Landroid/content/ContentResolver;)I
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 92
    const/4 v6, 0x0

    .line 94
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/lge/wapservice/settings/SettingsResolver;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "service_loading"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    if-eqz v6, :cond_7

    .line 97
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 98
    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "value":Ljava/lang/String;
    if-eqz v8, :cond_7

    .line 100
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 101
    .local v7, "intValue":I
    if-nez v7, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 114
    if-eqz v6, :cond_0

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    .end local v7    # "intValue":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 103
    .restart local v7    # "intValue":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_1
    if-ne v7, v9, :cond_3

    .line 114
    if-eqz v6, :cond_2

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_0

    .line 105
    :cond_3
    if-ne v7, v10, :cond_5

    .line 114
    if-eqz v6, :cond_4

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v10

    goto :goto_0

    .line 114
    :cond_5
    if-eqz v6, :cond_6

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    move v0, v9

    goto :goto_0

    .line 114
    .end local v7    # "intValue":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_7
    if-eqz v6, :cond_8

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v9

    .line 119
    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_9

    .line 115
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static isPushReceiveEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/wapservice/settings/SettingsResolver;->getReceiveServiceMessage(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 125
    .local v0, "recv_enable":Z
    const-string v1, "WapServiceSettingsResolver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<SettingsResolver> recv_enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/wapservice/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v0
.end method

.method public static setReceiveServiceMessage(Landroid/content/ContentResolver;Z)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "recv"    # Z

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 51
    .local v1, "values":Landroid/content/ContentValues;
    const-string v3, "value"

    if-eqz p1, :cond_0

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    sget-object v2, Lcom/lge/wapservice/settings/SettingsResolver;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "message_receive"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 57
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_1
    return-void

    .line 51
    .restart local v1    # "values":Landroid/content/ContentValues;
    :cond_0
    const-string v2, "0"
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    .end local v1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public static setServiceLoadingType(Landroid/content/ContentResolver;I)V
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # I

    .prologue
    .line 82
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 83
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "value"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/lge/wapservice/settings/SettingsResolver;->SERVICE_SETTING_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "service_loading"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updatePushReceiveSetting(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recvCheck"    # Z

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/lge/wapservice/settings/SettingsResolver;->setReceiveServiceMessage(Landroid/content/ContentResolver;Z)V

    .line 136
    return-void
.end method
