.class public Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/wapservice/settings/SettingsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/lge/wapservice/settings/SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/lge/wapservice/settings/SettingsProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->this$0:Lcom/lge/wapservice/settings/SettingsProvider;

    .line 86
    const-string v0, "settings.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 87
    iput-object p2, p0, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "stmt"    # Landroid/database/sqlite/SQLiteStatement;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 154
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 157
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 92
    const-string v8, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 93
    const-string v8, "CREATE TABLE settings(_id INTEGER PRIMARY KEY AUTOINCREMENT,key TEXT UNIQUE ON CONFLICT REPLACE,value TEXT);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 99
    const/4 v4, 0x0

    .line 101
    .local v4, "stmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    const-string v8, "INSERT OR IGNORE INTO settings(key,value) VALUES(?,?);"

    invoke-virtual {p1, v8}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 105
    new-instance v8, Ljava/lang/Integer;

    sget-object v9, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_WHITE_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v9}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, "trustedListActive":Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    sget-object v9, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_BLACK_LIST_FUNCTION_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v9}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "untrustedListActive":Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    sget-object v9, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_UNMATCH_UPDATE_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v9}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "updateActive":Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    sget-object v9, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v9}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "slEnable":Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    sget-object v9, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_SL_OPTION_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v9}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "slOption":Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    sget-object v9, Lcom/lge/wapservice/push/PushOpCfgItem;->PUSH_CFG_RECV_ENABLED_I:Lcom/lge/wapservice/push/PushOpCfgItem;

    invoke-static {v9}, Lcom/lge/wapservice/push/PushOpCfgManager;->getIntValue(Lcom/lge/wapservice/push/PushOpCfgItem;)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "pushEnabled":Ljava/lang/String;
    const-string v8, "WapServiceSettingsProvider"

    const-string v9, "====================================="

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v8, "WapServiceSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "trustedListActive - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v8, "WapServiceSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "untrustedListActive - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v8, "WapServiceSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateActive - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v8, "WapServiceSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "slOption - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v8, "WapServiceSettingsProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushEnabled - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/wapservice/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v9, "message_receive"

    const-string v8, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "0"

    :goto_0
    invoke-direct {p0, v4, v9, v8}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 124
    const-string v8, "service_loading"

    invoke-direct {p0, v4, v8, v2}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    const-string v8, "service_option"

    invoke-direct {p0, v4, v8, v3}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    const-string v9, "unmatch_update"

    const-string v8, "1"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "1"

    :goto_1
    invoke-direct {p0, v4, v9, v8}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    const-string v9, "white_list"

    const-string v8, "1"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "1"

    :goto_2
    invoke-direct {p0, v4, v9, v8}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v9, "black_list"

    const-string v8, "1"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "1"

    :goto_3
    invoke-direct {p0, v4, v9, v8}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->loadSetting(Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 142
    .end local v1    # "pushEnabled":Ljava/lang/String;
    .end local v2    # "slEnable":Ljava/lang/String;
    .end local v3    # "slOption":Ljava/lang/String;
    .end local v5    # "trustedListActive":Ljava/lang/String;
    .end local v6    # "untrustedListActive":Ljava/lang/String;
    .end local v7    # "updateActive":Ljava/lang/String;
    :cond_0
    :goto_4
    return-void

    .line 121
    .restart local v1    # "pushEnabled":Ljava/lang/String;
    .restart local v2    # "slEnable":Ljava/lang/String;
    .restart local v3    # "slOption":Ljava/lang/String;
    .restart local v5    # "trustedListActive":Ljava/lang/String;
    .restart local v6    # "untrustedListActive":Ljava/lang/String;
    .restart local v7    # "updateActive":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v8, "1"

    goto :goto_0

    .line 127
    :cond_2
    const-string v8, "0"

    goto :goto_1

    .line 129
    :cond_3
    const-string v8, "0"

    goto :goto_2

    .line 131
    :cond_4
    const-string v8, "0"
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 134
    .end local v1    # "pushEnabled":Ljava/lang/String;
    .end local v2    # "slEnable":Ljava/lang/String;
    .end local v3    # "slOption":Ljava/lang/String;
    .end local v5    # "trustedListActive":Ljava/lang/String;
    .end local v6    # "untrustedListActive":Ljava/lang/String;
    .end local v7    # "updateActive":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    if-eqz v4, :cond_0

    .line 139
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_4

    .line 138
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_5

    .line 139
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_5
    throw v8
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 146
    const-string v0, "WapServiceSettingsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrading database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/wapservice/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string v0, "DROP TABLE IF EXISTS settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/lge/wapservice/settings/SettingsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 151
    return-void
.end method
