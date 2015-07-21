.class public Lcom/lge/database/QueryWrapper;
.super Ljava/lang/Object;
.source "QueryWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/database/QueryWrapper$QueryObject;
    }
.end annotation


# static fields
.field public static final DYNAMIC_MODE:I = 0x2

.field public static final STATIC_MODE:I = 0x1

.field public static final STORED_QUERY_LIMIT_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "QueryWrapper"

.field private static mNumMemTable:I

.field private static mQueryWrapperMode:I

.field static sQueryObjectPoolDynamic:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/database/QueryWrapper$QueryObject;",
            ">;"
        }
    .end annotation
.end field

.field static sQueryObjectPoolStatic:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/lge/database/QueryWrapper$QueryObject;",
            ">;"
        }
    .end annotation
.end field

.field private static sQueryWrapper:Lcom/lge/database/QueryWrapper;


# instance fields
.field private MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    .line 37
    sput v0, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 38
    sput-object v1, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 39
    sput-object v1, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 59
    new-instance v0, Lcom/lge/database/QueryWrapper;

    invoke-direct {v0}, Lcom/lge/database/QueryWrapper;-><init>()V

    sput-object v0, Lcom/lge/database/QueryWrapper;->sQueryWrapper:Lcom/lge/database/QueryWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, "mem_table"

    iput-object v0, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;I)Lcom/lge/database/QueryWrapper;
    .locals 3
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "storeSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 124
    const-string v1, "QueryWrapper"

    const-string v2, "SQLiteDatabase parameter is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-object v0

    .line 127
    :cond_0
    sget v1, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    if-eqz v1, :cond_1

    .line 128
    const-string v1, "QueryWrapper"

    const-string v2, "Already QueryWrapper Object created in other mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-nez v0, :cond_4

    .line 132
    const/16 v0, 0xa

    if-gt p1, v0, :cond_2

    if-gtz p1, :cond_3

    .line 133
    :cond_2
    const/16 p1, 0xa

    .line 135
    :cond_3
    new-instance v0, Lcom/lge/database/QueryWrapper$1;

    invoke-direct {v0, p1, p0}, Lcom/lge/database/QueryWrapper$1;-><init>(ILandroid/database/sqlite/SQLiteDatabase;)V

    sput-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 146
    :cond_4
    const/4 v0, 0x2

    sput v0, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 147
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    const-string v0, "QueryWrapper"

    const-string v1, "QueryWrapper Object created in Dynamic mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_5
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryWrapper:Lcom/lge/database/QueryWrapper;

    goto :goto_0
.end method

.method public static getInstance(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper;
    .locals 8
    .param p0, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "arrQuery"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 162
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    const-string v6, "QueryWrapper"

    const-string v7, "There is a NULL in parameter"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :goto_0
    return-object v5

    .line 166
    :cond_1
    sget v6, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    if-eqz v6, :cond_2

    .line 167
    const-string v6, "QueryWrapper"

    const-string v7, "Already QueryWrapper Object created in other mode"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_2
    array-length v6, p1

    if-gtz v6, :cond_3

    .line 171
    const-string v6, "QueryWrapper"

    const-string v7, "Array size must be greater than 0"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    :cond_3
    array-length v6, p1

    const/16 v7, 0xa

    if-le v6, v7, :cond_4

    .line 175
    const-string v6, "QueryWrapper"

    const-string v7, "Exceed avalable managing size. Size should be under 10"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_4
    const/4 v5, 0x1

    sput v5, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 179
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-nez v5, :cond_7

    .line 180
    new-instance v5, Lcom/lge/database/QueryWrapper$2;

    array-length v6, p1

    invoke-direct {v5, v6, p0}, Lcom/lge/database/QueryWrapper$2;-><init>(ILandroid/database/sqlite/SQLiteDatabase;)V

    sput-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 190
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v4, v0, v1

    .line 191
    .local v4, "strQuery":Ljava/lang/String;
    if-nez v4, :cond_5

    .line 190
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 194
    :cond_5
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 195
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 197
    :cond_6
    new-instance v3, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-direct {v3, v4}, Lcom/lge/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;)V

    .line 198
    .local v3, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v5, v4, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 201
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .end local v4    # "strQuery":Ljava/lang/String;
    :cond_7
    const-string v5, "QueryWrapper"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 202
    const-string v5, "QueryWrapper"

    const-string v6, "QueryWrapper Object created in Static mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_8
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryWrapper:Lcom/lge/database/QueryWrapper;

    goto :goto_0
.end method

.method private declared-synchronized getQueryObject(Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;
    .locals 5
    .param p1, "requestQuery"    # Ljava/lang/String;

    .prologue
    .line 70
    monitor-enter p0

    const/4 v1, 0x0

    .line 71
    .local v1, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_0
    sget v3, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v3, :cond_0

    .line 72
    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v1, v0

    .line 73
    if-nez v1, :cond_0

    .line 74
    new-instance v2, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-direct {v2, p1}, Lcom/lge/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .local v2, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_1
    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v3, p1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 78
    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :cond_0
    :try_start_2
    sget v3, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v3, :cond_1

    .line 79
    sget-object v3, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v3, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    :cond_1
    monitor-exit p0

    return-object v1

    .line 70
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit p0

    throw v3

    .end local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v1    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    goto :goto_0
.end method

.method private declared-synchronized getQueryObject(Ljava/lang/String;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;
    .locals 7
    .param p1, "requestQuery"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 92
    monitor-enter p0

    const/4 v2, 0x0

    .line 93
    .local v2, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_0
    sget v5, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v5, :cond_0

    .line 94
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v2, v0

    .line 95
    if-nez v2, :cond_0

    .line 96
    new-instance v3, Lcom/lge/database/QueryWrapper$QueryObject;

    invoke-direct {v3, p1, p2}, Lcom/lge/database/QueryWrapper$QueryObject;-><init>(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .local v3, "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :try_start_1
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v5, p1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v2, v3

    .line 100
    .end local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :cond_0
    :try_start_2
    sget v5, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v5, :cond_3

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p2

    if-ge v1, v5, :cond_1

    .line 103
    const-string v5, "[?]"

    aget-object v6, p2, v1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "stringBinding":Ljava/lang/String;
    move-object p1, v4

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v4    # "stringBinding":Ljava/lang/String;
    :cond_1
    const-string v5, "QueryWrapper"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "QueryWrapper"

    const-string v6, "Replaces the match for ? within query with the given actual value"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    sget-object v5, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v5, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/lge/database/QueryWrapper$QueryObject;

    move-object v2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    .end local v1    # "i":I
    :cond_3
    monitor-exit p0

    return-object v2

    .line 92
    :catchall_0
    move-exception v5

    :goto_1
    monitor-exit p0

    throw v5

    .end local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    .restart local v2    # "qo":Lcom/lge/database/QueryWrapper$QueryObject;
    goto :goto_1
.end method

.method private queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 7
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    const/4 v6, 0x0

    .line 712
    const/4 v0, 0x0

    .line 713
    .local v0, "mQueryObject":Lcom/lge/database/QueryWrapper$QueryObject;
    if-nez p3, :cond_1

    .line 714
    invoke-direct {p0, p2}, Lcom/lge/database/QueryWrapper;->getQueryObject(Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;

    move-result-object v0

    .line 718
    :goto_0
    if-eqz v0, :cond_5

    .line 719
    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 720
    if-nez p3, :cond_2

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/database/QueryWrapper$QueryObject;->setMemTableName(Ljava/lang/String;)V

    .line 726
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lge/database/QueryWrapper$QueryObject;->setChangeCount(J)V

    .line 727
    sget v1, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    .line 741
    :cond_0
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 746
    :goto_3
    return-object v1

    .line 716
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/lge/database/QueryWrapper;->getQueryObject(Ljava/lang/String;[Ljava/lang/String;)Lcom/lge/database/QueryWrapper$QueryObject;

    move-result-object v0

    goto/16 :goto_0

    .line 723
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE IF NOT EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/database/QueryWrapper;->MEM_DB_TABLE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 730
    :cond_3
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getChangeCount()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drop Table IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 732
    if-nez p3, :cond_4

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 738
    :goto_4
    const-string v1, "SELECT total_changes();"

    invoke-static {p1, v1, v6}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lge/database/QueryWrapper$QueryObject;->setChangeCount(J)V

    goto/16 :goto_2

    .line 735
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TEMP TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/database/QueryWrapper$QueryObject;->getMemTableName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 743
    :cond_5
    const-string v1, "QueryWrapper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 744
    const-string v1, "QueryWrapper"

    const-string v2, "Not use memory table. It works on Native routine"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_6
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto/16 :goto_3
.end method

.method private queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 246
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "already closed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 248
    invoke-static/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 251
    .local v10, "sql":Ljava/lang/String;
    move-object/from16 v0, p6

    move-object/from16 v1, p11

    invoke-direct {p0, p1, v10, v0, v1}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projectionIn"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 580
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projectionIn"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 631
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 9
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p3, "projectionIn"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "sortOrder"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;
    .param p10, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 687
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 688
    :cond_0
    const-string v1, "QueryWrapper"

    const-string v2, "SQLiteQueryBuilder is NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/4 v1, 0x0

    .line 699
    :goto_0
    return-object v1

    :cond_1
    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    .line 692
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 696
    .local v8, "sql":Ljava/lang/String;
    const-string v1, "QueryWrapper"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    const-string v1, "QueryWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Performing query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_2
    move-object/from16 v0, p10

    invoke-direct {p0, p1, v8, p5, v0}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 533
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 412
    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "table"    # Ljava/lang/String;
    .param p3, "columns"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "groupBy"    # Ljava/lang/String;
    .param p7, "having"    # Ljava/lang/String;
    .param p8, "orderBy"    # Ljava/lang/String;
    .param p9, "limit"    # Ljava/lang/String;

    .prologue
    .line 464
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/lge/database/QueryWrapper;->query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/lge/database/QueryWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "distinct"    # Z
    .param p3, "table"    # Ljava/lang/String;
    .param p4, "columns"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .param p9, "orderBy"    # Ljava/lang/String;
    .param p10, "limit"    # Ljava/lang/String;
    .param p11, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 363
    invoke-direct/range {p0 .. p11}, Lcom/lge/database/QueryWrapper;->queryWithFactory(Landroid/database/sqlite/SQLiteDatabase;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 490
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "mDb"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 518
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/database/QueryWrapper;->queryMemTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public releaseQueryWrapper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 756
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 757
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 758
    sput-object v2, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolDynamic:Landroid/util/LruCache;

    .line 760
    :cond_0
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    if-eqz v0, :cond_1

    .line 761
    sget-object v0, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 762
    sput-object v2, Lcom/lge/database/QueryWrapper;->sQueryObjectPoolStatic:Landroid/util/LruCache;

    .line 764
    :cond_1
    sput v1, Lcom/lge/database/QueryWrapper;->mQueryWrapperMode:I

    .line 765
    sput v1, Lcom/lge/database/QueryWrapper;->mNumMemTable:I

    .line 766
    const-string v0, "QueryWrapper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    const-string v0, "QueryWrapper"

    const-string v1, "released memory using by QueryWrapper "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_2
    return-void
.end method
