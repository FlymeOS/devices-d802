.class public final Lcom/lge/lgdrm/DrmFwExt;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrmFwExt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkDRMMediaFile(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "checkIsImage"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 220
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 224
    :cond_1
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    const-string v1, "android.permission.ACCESS_LGDRM"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 229
    goto :goto_0

    .line 233
    :cond_2
    if-eqz p2, :cond_3

    .line 234
    :try_start_0
    invoke-static {p1}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_3

    move v1, v2

    .line 235
    goto :goto_0

    .line 239
    :cond_3
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 240
    .local v0, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-nez v0, :cond_4

    move v1, v2

    .line 241
    goto :goto_0

    .line 244
    :cond_4
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/lge/lgdrm/DrmContentSession;->judgeRight(IZ)I

    move-result v1

    if-nez v1, :cond_5

    .line 245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_5

    .line 246
    const/4 v1, 0x2

    goto :goto_0

    .line 249
    .end local v0    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    :cond_5
    move v1, v2

    .line 252
    goto :goto_0
.end method

.method public static checkDRMRingtone(Landroid/content/Context;Ljava/lang/String;ZZZ)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "setKey"    # Z
    .param p3, "resetKey"    # Z
    .param p4, "consume"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 70
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    :try_start_0
    invoke-static {p1, p0}, Lcom/lge/lgdrm/DrmManager;->createContentSession(Ljava/lang/String;Landroid/content/Context;)Lcom/lge/lgdrm/DrmContentSession;

    move-result-object v0

    .line 80
    .local v0, "session":Lcom/lge/lgdrm/DrmContentSession;
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->isActionSupported(I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 81
    goto :goto_0

    .line 84
    :cond_3
    if-eqz p2, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    .line 85
    goto :goto_0

    .line 87
    :cond_4
    if-eqz p3, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/lgdrm/DrmContentSession;->setDecryptionInfo(Z)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    .line 88
    goto :goto_0

    .line 91
    :cond_5
    if-eqz p4, :cond_6

    .line 93
    invoke-virtual {v0}, Lcom/lge/lgdrm/DrmContentSession;->getDrmTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/lge/lgdrm/DrmContentSession;->consumeRight(JJ)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    move v1, v3

    .line 96
    goto :goto_0

    .line 97
    .end local v0    # "session":Lcom/lge/lgdrm/DrmContentSession;
    :catch_0
    move-exception v1

    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public static getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 112
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-object v8

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 116
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_2

    const-string v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "authority":Ljava/lang/String;
    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 121
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/lge/media/RingtoneManagerEx;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v11

    .line 123
    .local v11, "uri":Landroid/net/Uri;
    if-eqz v11, :cond_0

    .line 126
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    .line 127
    if-eqz v6, :cond_4

    const-string v0, "settings"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :cond_4
    invoke-static {p0, v11}, Lcom/lge/lgdrm/DrmFwExt;->getActualRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 132
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_5
    if-eqz v6, :cond_0

    const-string v0, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "^[0-9]+@media"

    invoke-virtual {v6, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :cond_6
    const/4 v7, 0x0

    .line 134
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 136
    .local v8, "data":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 140
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 146
    :cond_7
    if-eqz v7, :cond_8

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_8
    :goto_1
    if-eqz v8, :cond_0

    const-string v0, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    const-string v0, "^/storage/emulated"

    const-string v1, "/data/media"

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 142
    :catch_0
    move-exception v9

    .line 144
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    if-eqz v7, :cond_8

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 146
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_9

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v0
.end method

.method public static getDRMAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "albumArt":[B
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 269
    .local v1, "retriever":Landroid/media/MediaMetadataRetriever;
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v0

    .line 271
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "retriever":Landroid/media/MediaMetadataRetriever;
    :goto_0
    return-object v0

    .line 272
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isDRM(Ljava/lang/String;)Z
    .locals 4
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 382
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Lcom/lge/lgdrm/DrmManager;->isSupportedExtension(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 391
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    invoke-static {p0}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 387
    .local v0, "drmType":I
    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3000

    if-gt v0, v2, :cond_0

    .line 391
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setDRMMediaQuery(Landroid/content/Context;Landroid/database/sqlite/SQLiteQueryBuilder;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qb"    # Landroid/database/sqlite/SQLiteQueryBuilder;
    .param p2, "appendAND"    # Z

    .prologue
    .line 185
    const-string v0, "android.permission.ACCESS_LGDRM"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const-string v0, "android.permission.ACCESS_LGDRM_CNTLIST"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    if-eqz p2, :cond_2

    .line 196
    const-string v0, " AND (mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\'))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 198
    :cond_2
    const-string v0, " mime_type NOT IN(\'application/vnd.oma.drm.message\',\'application/vnd.oma.drm.content\',\'application/vnd.oma.drm.dcf\')"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setDataSourceFromResource(Landroid/content/Context;Landroid/media/MediaPlayer;I)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "player"    # Landroid/media/MediaPlayer;
    .param p2, "res"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 164
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v6, :cond_0

    .line 165
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 167
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 169
    :cond_0
    return-void
.end method
