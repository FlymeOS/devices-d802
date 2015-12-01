.class public Lcom/lge/camera/util/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/util/BitmapManager$1;,
        Lcom/lge/camera/util/BitmapManager$ThreadStatus;,
        Lcom/lge/camera/util/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field private static sManager:Lcom/lge/camera/util/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/lge/camera/util/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 78
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/util/BitmapManager$ThreadStatus;

    .line 85
    .local v0, "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/lge/camera/util/BitmapManager$ThreadStatus;

    .end local v0    # "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/lge/camera/util/BitmapManager$ThreadStatus;-><init>(Lcom/lge/camera/util/BitmapManager$1;)V

    .line 87
    .restart local v0    # "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-object v0

    .line 84
    .end local v0    # "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    .local v9, "path":Ljava/lang/String;
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 106
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 107
    .local v2, "proj":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 109
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    if-eqz v7, :cond_2

    .line 112
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 114
    .local v6, "column_index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 126
    .end local v6    # "column_index":I
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    const/4 v7, 0x0

    .line 132
    .end local v2    # "proj":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "return null: activity:%s uri:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v10

    aput-object p1, v3, v11

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v9

    .line 118
    .restart local v2    # "proj":[Ljava/lang/String;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_2
    :try_start_1
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v9

    goto :goto_0

    .line 122
    :catch_0
    move-exception v8

    .line 123
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v1, "failed to get path from uri"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v7, :cond_1

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    const/4 v7, 0x0

    goto :goto_1

    .line 126
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 127
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method public static declared-synchronized instance()Lcom/lge/camera/util/BitmapManager;
    .locals 2

    .prologue
    .line 175
    const-class v1, Lcom/lge/camera/util/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/lge/camera/util/BitmapManager;

    invoke-direct {v0}, Lcom/lge/camera/util/BitmapManager;-><init>()V

    sput-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;

    .line 178
    :cond_0
    sget-object v0, Lcom/lge/camera/util/BitmapManager;->sManager:Lcom/lge/camera/util/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x1

    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/util/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v1, "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 100
    :goto_0
    monitor-exit p0

    return v0

    .line 99
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/lge/camera/util/BitmapManager$ThreadStatus;->mState:Lcom/lge/camera/util/BitmapManager$State;

    sget-object v3, Lcom/lge/camera/util/BitmapManager$State;->CANCEL:Lcom/lge/camera/util/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 100
    .local v0, "result":Z
    :goto_1
    goto :goto_0

    .line 99
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 93
    .end local v1    # "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;Z)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "origId"    # J
    .param p4, "kind"    # I
    .param p5, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p6, "isVideo"    # Z

    .prologue
    .line 147
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    .line 148
    .local v9, "t":Ljava/lang/Thread;
    invoke-direct {p0, v9}, Lcom/lge/camera/util/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/lge/camera/util/BitmapManager$ThreadStatus;

    move-result-object v8

    .line 150
    .local v8, "status":Lcom/lge/camera/util/BitmapManager$ThreadStatus;
    invoke-virtual {p0, v9}, Lcom/lge/camera/util/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not allowed to decode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    .line 170
    :goto_0
    return-object v1

    .line 156
    :cond_0
    if-eqz p6, :cond_1

    .line 157
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v1

    .line 168
    monitor-enter v8

    .line 169
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 160
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-static/range {v1 .. v7}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JJILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v1

    .line 168
    monitor-enter v8

    .line 169
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v8

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "CameraApp"

    const-string v2, "failed to getThumbnail()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 166
    const/4 v1, 0x0

    .line 168
    monitor-enter v8

    .line 169
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v8

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v1

    monitor-enter v8

    .line 169
    :try_start_6
    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v1

    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method
