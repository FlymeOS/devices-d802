.class public Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;
.super Ljava/lang/Object;
.source "MediaProviderUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MediaProviderUtils"

.field public static final ROTATION_180:I = 0xb4

.field public static final ROTATION_270:I = 0x10e

.field public static final ROTATION_90:I = 0x5a

.field public static final ROTATION_NORMAL:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "storageUri"    # Landroid/net/Uri;

    .prologue
    .line 225
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 226
    :cond_0
    const/4 v3, 0x0

    .line 260
    :goto_0
    return-object v3

    .line 229
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 233
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 236
    .local v4, "time":J
    if-eqz p3, :cond_2

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_2

    const/16 v3, 0xb4

    if-eq p3, v3, :cond_2

    const/16 v3, 0x10e

    if-eq p3, v3, :cond_2

    .line 239
    const/4 p3, 0x0

    .line 242
    :cond_2
    if-eqz p6, :cond_3

    .line 243
    const-string v3, "latitude"

    invoke-virtual {p6}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 244
    const-string v3, "longitude"

    invoke-virtual {p6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 247
    :cond_3
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const-string v3, "_display_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v3, "datetaken"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 250
    const-string v3, "date_added"

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 251
    const-string v3, "date_modified"

    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 252
    const-string v3, "mime_type"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v3, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 254
    const-string v3, "_data"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v3, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAppliedBurstPlayer()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 257
    const-string v3, "burst_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_4
    invoke-virtual {p0, p7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "storageUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v8, 0x3e8

    .line 187
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 188
    :cond_0
    const/4 v3, 0x0

    .line 217
    :goto_0
    return-object v3

    .line 191
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Landroid/content/ContentValues;

    const/16 v3, 0x9

    invoke-direct {v0, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 195
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 198
    .local v4, "time":J
    if-eqz p3, :cond_2

    const/16 v3, 0x5a

    if-eq p3, v3, :cond_2

    const/16 v3, 0xb4

    if-eq p3, v3, :cond_2

    const/16 v3, 0x10e

    if-eq p3, v3, :cond_2

    .line 201
    const/4 p3, 0x0

    .line 204
    :cond_2
    const-string v3, "title"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v3, "_display_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 207
    const-string v3, "date_added"

    div-long v6, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 208
    const-string v3, "date_modified"

    div-long v6, v4, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 209
    const-string v3, "mime_type"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v3, "orientation"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v3, "_data"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "_size"

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 213
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAppliedBurstPlayer()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 214
    const-string v3, "burst_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_3
    invoke-virtual {p0, p4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method public static addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I

    .prologue
    .line 150
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;)Landroid/net/Uri;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "dateTaken"    # J
    .param p6, "location"    # Landroid/location/Location;

    .prologue
    .line 165
    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addImageInternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "rotation"    # I

    .prologue
    .line 178
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;
    .locals 13
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "duration"    # J
    .param p5, "storageUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v10, 0x3e8

    .line 358
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 359
    :cond_0
    const/4 v5, 0x0

    .line 383
    :goto_0
    return-object v5

    .line 362
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 365
    .local v4, "fileName":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    const/16 v5, 0x9

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 366
    .local v2, "contentValues":Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 368
    .local v6, "time":J
    const-string v5, "title"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v5, "datetaken"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 371
    const-string v5, "date_added"

    div-long v8, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 372
    const-string v5, "date_modified"

    div-long v8, v6, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    const-string v5, "mime_type"

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v5, "_data"

    invoke-virtual {v2, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v5, "_size"

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    const-wide/16 v8, 0x0

    cmp-long v5, p3, v8

    if-lez v5, :cond_2

    .line 377
    const-string v5, "duration"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isAppliedBurstPlayer()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 380
    const-string v5, "burst_id"

    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {p0, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method public static addVideoExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 336
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addVideoInternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;
    .param p3, "duration"    # J

    .prologue
    .line 349
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->addVideo(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static createDateStringForAppSeg(J)Ljava/lang/String;
    .locals 4
    .param p0, "dateTaken"    # J

    .prologue
    .line 596
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 597
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 598
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 599
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 2
    .param p0, "dateTaken"    # J

    .prologue
    .line 607
    const-string v0, "yyyy-MM-dd_kk-mm-ss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "storageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 295
    const/4 v7, -0x1

    .line 297
    .local v7, "result":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v8, v7

    .line 319
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 302
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 309
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 311
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 313
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v9, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 316
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v7

    .line 319
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method public static deleteImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 275
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static deleteImageInternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 286
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->deleteImage(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I
    .locals 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "storageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 418
    const/4 v7, -0x1

    .line 420
    .local v7, "result":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v8, v7

    .line 442
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 425
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string v5, "title"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 431
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 433
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 434
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 436
    .local v9, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v9, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 439
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v8, v7

    .line 442
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0
.end method

.method public static deleteVideoExternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 398
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method public static deleteVideoInternal(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 409
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->deleteVideo(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    return v0
.end method

.method private static getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "colunmName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 114
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-object v3

    .line 118
    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 124
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 126
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 130
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 131
    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "filePath":Ljava/lang/String;
    move-object v3, v7

    .line 133
    goto :goto_0
.end method

.method public static getExternalImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 10
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "storageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 61
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v9

    .line 82
    :goto_0
    return-object v0

    .line 66
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v1

    const-string v3, "_data=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v1

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 72
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_2

    move-object v0, v9

    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    move-object v0, v9

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 79
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "id":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "content":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImageFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 95
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "storageUri"    # Landroid/net/Uri;

    .prologue
    .line 478
    const/4 v10, 0x0

    .line 480
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    return-object v0

    .line 484
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 485
    const/4 p2, 0x1

    .line 488
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "bucket_display_name"

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 494
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 495
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 496
    .local v6, "count":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 497
    .local v9, "index":I
    new-array v11, v6, [I

    .line 499
    .local v11, "videoIds":[I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 500
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 501
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v8

    .line 504
    aget v0, v11, v8

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 506
    if-eqz v10, :cond_5

    .line 512
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "videoIds":[I
    :cond_4
    move-object v0, v10

    .line 515
    goto :goto_0

    .line 509
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "videoIds":[I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 500
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static getImageThumbnailBitmapExternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 458
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getImageThumbnailBitmapInternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 470
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getImageThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getImageContentUri(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getSaveFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "dir_path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 615
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    .local v0, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 619
    .local v2, "sequentialNo":I
    move-object v1, p1

    .line 620
    .local v1, "orgFileName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 621
    add-int/lit8 v2, v2, 0x1

    .line 622
    const-string v5, "\\."

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "str":[Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "sequentialNoStr":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 625
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .restart local v0    # "file":Ljava/io/File;
    const-string v5, "MediaProviderUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NewFilename:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const/16 v5, 0x3e8

    if-lt v2, v5, :cond_0

    .line 628
    const-string v5, "MediaProviderUtils"

    const-string v6, "NewFilename 1000 count over!!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v5, 0x0

    .line 632
    .end local v3    # "sequentialNoStr":Ljava/lang/String;
    .end local v4    # "str":[Ljava/lang/String;
    :goto_0
    return-object v5

    :cond_1
    move-object v5, p1

    goto :goto_0
.end method

.method public static getVideoFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    const-string v0, "_data"

    invoke-static {p0, p1, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getContentFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I
    .param p3, "storageUri"    # Landroid/net/Uri;

    .prologue
    .line 551
    const/4 v10, 0x0

    .line 553
    .local v10, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 554
    :cond_0
    const/4 v0, 0x0

    .line 588
    :goto_0
    return-object v0

    .line 557
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 558
    const/4 p2, 0x1

    .line 561
    :cond_2
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v3, "_data=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const-string v5, "title"

    move-object v0, p0

    move-object v1, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 567
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 568
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 569
    .local v6, "count":I
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 570
    .local v9, "index":I
    new-array v11, v6, [I

    .line 572
    .local v11, "videoIds":[I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 573
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_3

    .line 574
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v11, v8

    .line 577
    aget v0, v11, v8

    int-to-long v0, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p2, v2}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 579
    if-eqz v10, :cond_5

    .line 585
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v6    # "count":I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "videoIds":[I
    :cond_4
    move-object v0, v10

    .line 588
    goto :goto_0

    .line 582
    .restart local v6    # "count":I
    .restart local v8    # "i":I
    .restart local v9    # "index":I
    .restart local v11    # "videoIds":[I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 573
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static getVideoThumbnailBitmapExternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 531
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getVideoThumbnailBitmapInternal(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 543
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, v0}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->getVideoThumbnailBitmap(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
