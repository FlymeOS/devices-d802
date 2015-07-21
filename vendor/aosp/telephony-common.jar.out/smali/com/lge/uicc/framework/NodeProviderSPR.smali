.class public Lcom/lge/uicc/framework/NodeProviderSPR;
.super Landroid/content/ContentProvider;
.source "NodeProviderSPR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;,
        Lcom/lge/uicc/framework/NodeProviderSPR$NodeData;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.node"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final NODE:I = 0x3e8

.field public static final NODE_DATABASE_NAME:Ljava/lang/String; = "/carrier/apps/node.db"

.field private static sProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mNodeHelper:Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "content://com.lge.node/omadm_node"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/uicc/framework/NodeProviderSPR;->CONTENT_URI:Landroid/net/Uri;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/uicc/framework/NodeProviderSPR;->sProjectionMap:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/lge/uicc/framework/NodeProviderSPR;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/lge/uicc/framework/NodeProviderSPR;->sProjectionMap:Ljava/util/HashMap;

    const-string v1, "value"

    const-string v2, "value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lge/uicc/framework/NodeProviderSPR;->sUriMatcher:Landroid/content/UriMatcher;

    .line 53
    sget-object v0, Lcom/lge/uicc/framework/NodeProviderSPR;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.lge.node"

    const-string v2, "omadm_node"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 149
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 135
    iget-object v3, p0, Lcom/lge/uicc/framework/NodeProviderSPR;->mNodeHelper:Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 136
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 137
    .local v2, "row":I
    sget-object v3, Lcom/lge/uicc/framework/NodeProviderSPR;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 138
    .local v1, "match":I
    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_0
    return v2

    .line 140
    :pswitch_0
    const-string v3, "omadm_node"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 141
    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 92
    iget-object v5, p0, Lcom/lge/uicc/framework/NodeProviderSPR;->mNodeHelper:Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;

    invoke-virtual {v5}, Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 93
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, 0x0

    .line 94
    .local v2, "row":J
    sget-object v5, Lcom/lge/uicc/framework/NodeProviderSPR;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 96
    .local v1, "match":I
    const/4 v4, 0x0

    .line 98
    .local v4, "successUri":Landroid/net/Uri;
    packed-switch v1, :pswitch_data_0

    .line 110
    :cond_0
    :goto_0
    return-object v4

    .line 100
    :pswitch_0
    const-string v5, "omadm_node"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 101
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    .line 102
    sget-object v5, Lcom/lge/uicc/framework/NodeProviderSPR;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;

    invoke-virtual {p0}, Lcom/lge/uicc/framework/NodeProviderSPR;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;-><init>(Lcom/lge/uicc/framework/NodeProviderSPR;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/uicc/framework/NodeProviderSPR;->mNodeHelper:Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;

    .line 61
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 74
    iget-object v1, p0, Lcom/lge/uicc/framework/NodeProviderSPR;->mNodeHelper:Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 75
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/lge/uicc/framework/NodeProviderSPR;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 76
    .local v9, "match":I
    const/4 v8, 0x0

    .line 77
    .local v8, "cursor":Landroid/database/Cursor;
    packed-switch v9, :pswitch_data_0

    .line 86
    :goto_0
    return-object v8

    .line 79
    :pswitch_0
    const-string v1, "omadm_node"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 80
    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 117
    iget-object v3, p0, Lcom/lge/uicc/framework/NodeProviderSPR;->mNodeHelper:Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/uicc/framework/NodeProviderSPR$NodeDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 118
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 119
    .local v2, "row":I
    sget-object v3, Lcom/lge/uicc/framework/NodeProviderSPR;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 121
    .local v1, "match":I
    packed-switch v1, :pswitch_data_0

    .line 129
    :goto_0
    return v2

    .line 123
    :pswitch_0
    const-string v3, "omadm_node"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 124
    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
