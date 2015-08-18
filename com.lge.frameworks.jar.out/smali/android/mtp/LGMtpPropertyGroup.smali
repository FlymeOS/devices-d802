.class Landroid/mtp/LGMtpPropertyGroup;
.super Ljava/lang/Object;
.source "LGMtpPropertyGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/LGMtpPropertyGroup$Property;
    }
.end annotation


# static fields
.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_FORMAT_WHERE:Ljava/lang/String; = "_id=? AND format=?"

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field private static final PARENT_FORMAT_WHERE:Ljava/lang/String; = "parent=? AND format=?"

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final TAG:Ljava/lang/String; = "LGMtpPropertyGroup"


# instance fields
.field private mColumns:[Ljava/lang/String;

.field private final mDatabase:Landroid/mtp/LGMtpDatabase;

.field private final mPackageName:Ljava/lang/String;

.field private final mProperties:[Landroid/mtp/LGMtpPropertyGroup$Property;

.field private final mProvider:Landroid/content/IContentProvider;

.field private final mUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/mtp/LGMtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 5
    .param p1, "database"    # Landroid/mtp/LGMtpDatabase;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "volume"    # Ljava/lang/String;
    .param p5, "properties"    # [I

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/mtp/LGMtpPropertyGroup;->mDatabase:Landroid/mtp/LGMtpDatabase;

    .line 75
    iput-object p2, p0, Landroid/mtp/LGMtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    .line 76
    iput-object p3, p0, Landroid/mtp/LGMtpPropertyGroup;->mPackageName:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Landroid/mtp/LGMtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    .line 78
    invoke-static {p4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Landroid/mtp/LGMtpPropertyGroup;->mUri:Landroid/net/Uri;

    .line 80
    array-length v1, p5

    .line 81
    .local v1, "count":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    .local v0, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "_id"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    new-array v3, v1, [Landroid/mtp/LGMtpPropertyGroup$Property;

    iput-object v3, p0, Landroid/mtp/LGMtpPropertyGroup;->mProperties:[Landroid/mtp/LGMtpPropertyGroup$Property;

    .line 85
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 86
    iget-object v3, p0, Landroid/mtp/LGMtpPropertyGroup;->mProperties:[Landroid/mtp/LGMtpPropertyGroup$Property;

    aget v4, p5, v2

    invoke-direct {p0, v4, v0}, Landroid/mtp/LGMtpPropertyGroup;->createProperty(ILjava/util/ArrayList;)Landroid/mtp/LGMtpPropertyGroup$Property;

    move-result-object v4

    aput-object v4, v3, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 89
    new-array v3, v1, [Ljava/lang/String;

    iput-object v3, p0, Landroid/mtp/LGMtpPropertyGroup;->mColumns:[Ljava/lang/String;

    .line 90
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 91
    iget-object v4, p0, Landroid/mtp/LGMtpPropertyGroup;->mColumns:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v4, v2

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method

.method private createProperty(ILjava/util/ArrayList;)Landroid/mtp/LGMtpPropertyGroup$Property;
    .locals 5
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/mtp/LGMtpPropertyGroup$Property;"
        }
    .end annotation

    .prologue
    .line 96
    .local p2, "columns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 99
    .local v0, "column":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 211
    const/4 v1, 0x0

    .line 212
    .local v1, "type":I
    const-string v2, "LGMtpPropertyGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported property "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    new-instance v2, Landroid/mtp/LGMtpPropertyGroup$Property;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/LGMtpPropertyGroup$Property;-><init>(Landroid/mtp/LGMtpPropertyGroup;III)V

    .line 220
    :goto_1
    return-object v2

    .line 101
    .end local v1    # "type":I
    :sswitch_0
    const-string v0, "storage_id"

    .line 102
    const/4 v1, 0x6

    .line 103
    .restart local v1    # "type":I
    goto :goto_0

    .line 105
    .end local v1    # "type":I
    :sswitch_1
    const-string v0, "format"

    .line 106
    const/4 v1, 0x4

    .line 107
    .restart local v1    # "type":I
    goto :goto_0

    .line 110
    .end local v1    # "type":I
    :sswitch_2
    const/4 v1, 0x4

    .line 111
    .restart local v1    # "type":I
    goto :goto_0

    .line 113
    .end local v1    # "type":I
    :sswitch_3
    const-string v0, "_size"

    .line 114
    const/16 v1, 0x8

    .line 115
    .restart local v1    # "type":I
    goto :goto_0

    .line 117
    .end local v1    # "type":I
    :sswitch_4
    const-string v0, "_data"

    .line 118
    const v1, 0xffff

    .line 119
    .restart local v1    # "type":I
    goto :goto_0

    .line 121
    .end local v1    # "type":I
    :sswitch_5
    const-string v0, "title"

    .line 122
    const v1, 0xffff

    .line 123
    .restart local v1    # "type":I
    goto :goto_0

    .line 125
    .end local v1    # "type":I
    :sswitch_6
    const-string v0, "date_modified"

    .line 126
    const v1, 0xffff

    .line 127
    .restart local v1    # "type":I
    goto :goto_0

    .line 135
    .end local v1    # "type":I
    :sswitch_7
    const-string v0, "year"

    .line 136
    const v1, 0xffff

    .line 137
    .restart local v1    # "type":I
    goto :goto_0

    .line 139
    .end local v1    # "type":I
    :sswitch_8
    const-string v0, "parent"

    .line 140
    const/4 v1, 0x6

    .line 141
    .restart local v1    # "type":I
    goto :goto_0

    .line 144
    .end local v1    # "type":I
    :sswitch_9
    const-string v0, "storage_id"

    .line 145
    const/16 v1, 0xa

    .line 146
    .restart local v1    # "type":I
    goto :goto_0

    .line 148
    .end local v1    # "type":I
    :sswitch_a
    const-string v0, "duration"

    .line 149
    const/4 v1, 0x6

    .line 150
    .restart local v1    # "type":I
    goto :goto_0

    .line 152
    .end local v1    # "type":I
    :sswitch_b
    const-string v0, "track"

    .line 153
    const/4 v1, 0x4

    .line 154
    .restart local v1    # "type":I
    goto :goto_0

    .line 156
    .end local v1    # "type":I
    :sswitch_c
    const-string v0, "_display_name"

    .line 157
    const v1, 0xffff

    .line 158
    .restart local v1    # "type":I
    goto :goto_0

    .line 160
    .end local v1    # "type":I
    :sswitch_d
    const v1, 0xffff

    .line 161
    .restart local v1    # "type":I
    goto :goto_0

    .line 163
    .end local v1    # "type":I
    :sswitch_e
    const v1, 0xffff

    .line 164
    .restart local v1    # "type":I
    goto :goto_0

    .line 166
    .end local v1    # "type":I
    :sswitch_f
    const-string v0, "album_artist"

    .line 167
    const v1, 0xffff

    .line 168
    .restart local v1    # "type":I
    goto :goto_0

    .line 171
    .end local v1    # "type":I
    :sswitch_10
    const v1, 0xffff

    .line 172
    .restart local v1    # "type":I
    goto :goto_0

    .line 174
    .end local v1    # "type":I
    :sswitch_11
    const-string v0, "composer"

    .line 175
    const v1, 0xffff

    .line 176
    .restart local v1    # "type":I
    goto :goto_0

    .line 178
    .end local v1    # "type":I
    :sswitch_12
    const-string v0, "description"

    .line 179
    const v1, 0xffff

    .line 180
    .restart local v1    # "type":I
    goto :goto_0

    .line 183
    .end local v1    # "type":I
    :sswitch_13
    const-string v0, "width"

    .line 184
    const/4 v1, 0x6

    .line 185
    .restart local v1    # "type":I
    goto :goto_0

    .line 187
    .end local v1    # "type":I
    :sswitch_14
    const-string v0, "height"

    .line 188
    const/4 v1, 0x6

    .line 189
    .restart local v1    # "type":I
    goto :goto_0

    .line 191
    .end local v1    # "type":I
    :sswitch_15
    const-string v0, "datetaken"

    .line 192
    const v1, 0xffff

    .line 193
    .restart local v1    # "type":I
    goto :goto_0

    .line 195
    .end local v1    # "type":I
    :sswitch_16
    const-string v0, "date_added"

    .line 196
    const v1, 0xffff

    .line 197
    .restart local v1    # "type":I
    goto :goto_0

    .line 203
    .end local v1    # "type":I
    :sswitch_17
    const/4 v1, 0x6

    .line 204
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 208
    .end local v1    # "type":I
    :sswitch_18
    const/4 v1, 0x4

    .line 209
    .restart local v1    # "type":I
    goto/16 :goto_0

    .line 220
    :cond_0
    new-instance v2, Landroid/mtp/LGMtpPropertyGroup$Property;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/mtp/LGMtpPropertyGroup$Property;-><init>(Landroid/mtp/LGMtpPropertyGroup;III)V

    goto :goto_1

    .line 99
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_0
        0xdc02 -> :sswitch_1
        0xdc03 -> :sswitch_2
        0xdc04 -> :sswitch_3
        0xdc07 -> :sswitch_4
        0xdc08 -> :sswitch_16
        0xdc09 -> :sswitch_6
        0xdc0b -> :sswitch_8
        0xdc41 -> :sswitch_9
        0xdc44 -> :sswitch_5
        0xdc46 -> :sswitch_d
        0xdc47 -> :sswitch_15
        0xdc48 -> :sswitch_12
        0xdc87 -> :sswitch_13
        0xdc88 -> :sswitch_14
        0xdc89 -> :sswitch_a
        0xdc8b -> :sswitch_b
        0xdc8c -> :sswitch_10
        0xdc96 -> :sswitch_11
        0xdc99 -> :sswitch_7
        0xdc9a -> :sswitch_e
        0xdc9b -> :sswitch_f
        0xdce0 -> :sswitch_c
        0xde92 -> :sswitch_18
        0xde93 -> :sswitch_17
        0xde94 -> :sswitch_18
        0xde99 -> :sswitch_17
        0xde9a -> :sswitch_17
    .end sparse-switch
.end method

.method private native format_date_time(J)Ljava/lang/String;
.end method

.method private static nameFromPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 309
    .local v2, "start":I
    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 310
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 311
    add-int/lit8 v2, v1, 0x1

    .line 313
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 314
    .local v0, "end":I
    sub-int v3, v0, v2

    const/16 v4, 0xff

    if-le v3, v4, :cond_1

    .line 315
    add-int/lit16 v0, v2, 0xff

    .line 317
    :cond_1
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private queryAudio(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 246
    const/4 v8, 0x0

    .line 248
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 251
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 259
    if-eqz v8, :cond_0

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    if-eqz v8, :cond_0

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 256
    :catch_0
    move-exception v9

    .line 259
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 259
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 260
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryGenre(I)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I

    .prologue
    const/4 v10, 0x0

    .line 266
    const/4 v8, 0x0

    .line 268
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpPropertyGroup;->mVolumeName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 269
    .local v2, "uri":Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/LGMtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpPropertyGroup;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 272
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 281
    if-eqz v8, :cond_0

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 275
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    if-eqz v8, :cond_0

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 277
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 278
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "LGMtpPropertyGroup"

    const-string v1, "queryGenre exception"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    if-eqz v8, :cond_2

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 281
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 282
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryLong(ILjava/lang/String;)Ljava/lang/Long;
    .locals 10
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 288
    const/4 v8, 0x0

    .line 291
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 294
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v0, Ljava/lang/Long;

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    if-eqz v8, :cond_0

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_0
    :goto_0
    return-object v0

    .line 299
    :cond_1
    if-eqz v8, :cond_2

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move-object v0, v9

    .line 303
    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 299
    if-eqz v8, :cond_2

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private queryString(ILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "id"    # I
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 225
    const/4 v8, 0x0

    .line 228
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/LGMtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/LGMtpPropertyGroup;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/LGMtpPropertyGroup;->mUri:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 231
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 239
    if-eqz v8, :cond_0

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v0

    .line 234
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    if-eqz v8, :cond_0

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v9

    .line 239
    .local v9, "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v10

    goto :goto_0

    .line 239
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 240
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method


# virtual methods
.method getPropertyList(III)Landroid/mtp/MtpPropertyList;
    .locals 32
    .param p1, "handle"    # I
    .param p2, "format"    # I
    .param p3, "depth"    # I

    .prologue
    .line 322
    const/4 v2, 0x1

    move/from16 v0, p3

    if-le v0, v2, :cond_1

    .line 325
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const v3, 0xa808

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 502
    :cond_0
    :goto_0
    return-object v8

    .line 330
    :cond_1
    if-nez p2, :cond_5

    .line 331
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    .line 333
    const/4 v6, 0x0

    .line 334
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 358
    .local v7, "whereArgs":[Ljava/lang/String;
    :goto_1
    const/16 v20, 0x0

    .line 361
    .local v20, "c":Landroid/database/Cursor;
    if-gtz p3, :cond_2

    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpPropertyGroup;->mColumns:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 362
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpPropertyGroup;->mProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/LGMtpPropertyGroup;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/LGMtpPropertyGroup;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/LGMtpPropertyGroup;->mColumns:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v20

    .line 363
    if-nez v20, :cond_8

    .line 364
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2009

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    if-eqz v20, :cond_0

    .line 502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 336
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v20    # "c":Landroid/database/Cursor;
    :cond_3
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 337
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_4

    .line 338
    const-string v6, "parent=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 340
    .end local v6    # "where":Ljava/lang/String;
    :cond_4
    const-string v6, "_id=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 344
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_5
    const/4 v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 346
    const-string v6, "format=?"

    .line 347
    .restart local v6    # "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .restart local v7    # "whereArgs":[Ljava/lang/String;
    goto :goto_1

    .line 349
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "whereArgs":[Ljava/lang/String;
    :cond_6
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 350
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    .line 351
    const-string v6, "parent=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 353
    .end local v6    # "where":Ljava/lang/String;
    :cond_7
    const-string v6, "_id=? AND format=?"

    .restart local v6    # "where":Ljava/lang/String;
    goto :goto_1

    .line 368
    .restart local v20    # "c":Landroid/database/Cursor;
    :cond_8
    if-nez v20, :cond_a

    const/16 v22, 0x1

    .line 369
    .local v22, "count":I
    :goto_2
    :try_start_1
    new-instance v8, Landroid/mtp/MtpPropertyList;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpPropertyGroup;->mProperties:[Landroid/mtp/LGMtpPropertyGroup$Property;

    array-length v2, v2

    mul-int v2, v2, v22

    const/16 v3, 0x2001

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 373
    .local v8, "result":Landroid/mtp/MtpPropertyList;
    const/16 v27, 0x0

    .local v27, "objectIndex":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v22

    if-ge v0, v1, :cond_18

    .line 374
    if-eqz v20, :cond_9

    .line 375
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    .line 376
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 p1, v0

    .line 380
    :cond_9
    const/16 v29, 0x0

    .local v29, "propertyIndex":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpPropertyGroup;->mProperties:[Landroid/mtp/LGMtpPropertyGroup$Property;

    array-length v2, v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_17

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/LGMtpPropertyGroup;->mProperties:[Landroid/mtp/LGMtpPropertyGroup$Property;

    aget-object v28, v2, v29

    .line 382
    .local v28, "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    move-object/from16 v0, v28

    iget v10, v0, Landroid/mtp/LGMtpPropertyGroup$Property;->code:I

    .line 383
    .local v10, "propertyCode":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/LGMtpPropertyGroup$Property;->column:I

    move/from16 v21, v0

    .line 386
    .local v21, "column":I
    sparse-switch v10, :sswitch_data_0

    .line 484
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/LGMtpPropertyGroup$Property;->type:I

    const v3, 0xffff

    if-ne v2, v3, :cond_15

    .line 485
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    .line 380
    :goto_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 368
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :cond_a
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v22

    goto :goto_2

    .line 389
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_0
    const/4 v11, 0x4

    const-wide/16 v12, 0x0

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 498
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    :catch_0
    move-exception v24

    .line 499
    .local v24, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v8, Landroid/mtp/MtpPropertyList;

    const/4 v2, 0x0

    const/16 v3, 0x2002

    invoke-direct {v8, v2, v3}, Landroid/mtp/MtpPropertyList;-><init>(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    if-eqz v20, :cond_0

    .line 502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 393
    .end local v24    # "e":Landroid/os/RemoteException;
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    :sswitch_1
    :try_start_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 394
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_c

    .line 395
    invoke-static/range {v30 .. v30}, Landroid/mtp/LGMtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 501
    .end local v8    # "result":Landroid/mtp/MtpPropertyList;
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v22    # "count":I
    .end local v27    # "objectIndex":I
    .end local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    .end local v29    # "propertyIndex":I
    .end local v30    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_b

    .line 502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 397
    .restart local v8    # "result":Landroid/mtp/MtpPropertyList;
    .restart local v10    # "propertyCode":I
    .restart local v21    # "column":I
    .restart local v22    # "count":I
    .restart local v27    # "objectIndex":I
    .restart local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    .restart local v29    # "propertyIndex":I
    .restart local v30    # "value":Ljava/lang/String;
    :cond_c
    const/16 v2, 0x2009

    :try_start_4
    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 402
    .end local v30    # "value":Ljava/lang/String;
    :sswitch_2
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 404
    .local v26, "name":Ljava/lang/String;
    if-nez v26, :cond_d

    .line 405
    const-string v2, "name"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/LGMtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 408
    :cond_d
    if-nez v26, :cond_e

    .line 409
    const-string v2, "_data"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/LGMtpPropertyGroup;->queryString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 410
    if-eqz v26, :cond_e

    .line 411
    invoke-static/range {v26 .. v26}, Landroid/mtp/LGMtpPropertyGroup;->nameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 414
    :cond_e
    if-eqz v26, :cond_f

    .line 415
    move/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 417
    :cond_f
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto :goto_5

    .line 423
    .end local v26    # "name":Ljava/lang/String;
    :sswitch_3
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/LGMtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto :goto_5

    .line 427
    :sswitch_4
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 428
    .local v31, "year":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0101T000000"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 429
    .local v23, "dateTime":Ljava/lang/String;
    move/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 433
    .end local v23    # "dateTime":Ljava/lang/String;
    .end local v31    # "year":I
    :sswitch_5
    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 434
    .local v12, "puid":J
    const/16 v2, 0x20

    shl-long/2addr v12, v2

    .line 435
    move/from16 v0, p1

    int-to-long v2, v0

    add-long/2addr v12, v2

    .line 436
    const/16 v11, 0xa

    move/from16 v9, p1

    invoke-virtual/range {v8 .. v13}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 439
    .end local v12    # "puid":J
    :sswitch_6
    const/16 v17, 0x4

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    rem-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 443
    :sswitch_7
    const-string v2, "artist"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/LGMtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 447
    :sswitch_8
    const-string v2, "album"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/mtp/LGMtpPropertyGroup;->queryAudio(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 451
    :sswitch_9
    invoke-direct/range {p0 .. p1}, Landroid/mtp/LGMtpPropertyGroup;->queryGenre(I)Ljava/lang/String;

    move-result-object v25

    .line 452
    .local v25, "genre":Ljava/lang/String;
    if-eqz v25, :cond_10

    .line 453
    move/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v8, v0, v10, v1}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    .line 455
    :cond_10
    const/16 v2, 0x2009

    invoke-virtual {v8, v2}, Landroid/mtp/MtpPropertyList;->setResult(I)V

    goto/16 :goto_5

    .line 460
    .end local v25    # "genre":Ljava/lang/String;
    :sswitch_a
    const/16 v17, 0x6

    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_6
    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    .line 463
    :sswitch_b
    const/16 v17, 0x6

    if-eqz v20, :cond_12

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_7
    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x0

    goto :goto_7

    .line 466
    :sswitch_c
    if-eqz v20, :cond_13

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    :goto_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/LGMtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    const-wide/16 v2, 0x0

    goto :goto_8

    .line 469
    :sswitch_d
    if-eqz v20, :cond_14

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/mtp/LGMtpPropertyGroup;->format_date_time(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v8, v0, v10, v2}, Landroid/mtp/MtpPropertyList;->append(IILjava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_9

    .line 476
    :sswitch_e
    const/16 v17, 0x6

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 481
    :sswitch_f
    const/16 v17, 0x4

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 486
    :cond_15
    move-object/from16 v0, v28

    iget v2, v0, Landroid/mtp/LGMtpPropertyGroup$Property;->type:I

    if-nez v2, :cond_16

    .line 487
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/LGMtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V

    goto/16 :goto_5

    .line 489
    :cond_16
    move-object/from16 v0, v28

    iget v0, v0, Landroid/mtp/LGMtpPropertyGroup$Property;->type:I

    move/from16 v17, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object v14, v8

    move/from16 v15, p1

    move/from16 v16, v10

    invoke-virtual/range {v14 .. v19}, Landroid/mtp/MtpPropertyList;->append(IIIJ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_5

    .line 373
    .end local v10    # "propertyCode":I
    .end local v21    # "column":I
    .end local v28    # "property":Landroid/mtp/LGMtpPropertyGroup$Property;
    :cond_17
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_3

    .line 501
    .end local v29    # "propertyIndex":I
    :cond_18
    if-eqz v20, :cond_0

    .line 502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 386
    :sswitch_data_0
    .sparse-switch
        0xdc03 -> :sswitch_0
        0xdc07 -> :sswitch_1
        0xdc08 -> :sswitch_d
        0xdc09 -> :sswitch_3
        0xdc41 -> :sswitch_5
        0xdc44 -> :sswitch_2
        0xdc46 -> :sswitch_7
        0xdc47 -> :sswitch_c
        0xdc87 -> :sswitch_a
        0xdc88 -> :sswitch_b
        0xdc8b -> :sswitch_6
        0xdc8c -> :sswitch_9
        0xdc99 -> :sswitch_4
        0xdc9a -> :sswitch_8
        0xde92 -> :sswitch_f
        0xde93 -> :sswitch_e
        0xde94 -> :sswitch_f
        0xde99 -> :sswitch_e
        0xde9a -> :sswitch_e
    .end sparse-switch
.end method
