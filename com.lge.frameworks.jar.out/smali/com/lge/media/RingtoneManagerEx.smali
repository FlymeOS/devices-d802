.class public Lcom/lge/media/RingtoneManagerEx;
.super Landroid/media/RingtoneManager;
.source "RingtoneManagerEx.java"


# static fields
.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RingtoneManagerEx"

.field public static final TYPE_ALRAM_TIMER:I = 0x40

.field public static final TYPE_NOTIFICATION_SIM2:I = 0x10

.field public static final TYPE_NOTIFICATION_SIM3:I = 0x100

.field public static final TYPE_RINGFORME:I = 0x200

.field public static final TYPE_RINGTONE_SIM2:I = 0x8

.field public static final TYPE_RINGTONE_SIM3:I = 0x80

.field public static final TYPE_RINGTONE_VIDEOCALL:I = 0x20


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_display_name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/lge/media/RingtoneManagerEx;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string v1, "title_key"

    aput-object v1, v0, v6

    const-string v1, "_display_name"

    aput-object v1, v0, v7

    sput-object v0, Lcom/lge/media/RingtoneManagerEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 96
    iput-object p1, p0, Lcom/lge/media/RingtoneManagerEx;->mContext:Landroid/content/Context;

    .line 97
    sget-object v0, Lcom/lge/media/RingtoneManagerEx;->INTERNAL_COLUMNS:[Ljava/lang/String;

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 98
    sget-object v0, Lcom/lge/media/RingtoneManagerEx;->MEDIA_COLUMNS:[Ljava/lang/String;

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getSettingForType(I)Ljava/lang/String;

    move-result-object v8

    .line 234
    .local v8, "setting":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 235
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x3

    invoke-static {v1, v8, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 237
    .local v10, "uriString":Ljava/lang/String;
    if-eqz v10, :cond_2

    and-int/lit8 v1, p1, 0x7

    if-nez v1, :cond_3

    .line 238
    :cond_2
    const-string v1, "RingtoneManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActualDefaultRingtoneUri type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uriString is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    if-eqz v10, :cond_0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 241
    :cond_3
    invoke-static {p0, p1}, Lcom/lge/media/RingtoneManagerEx;->getStaticDefaultToneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 242
    .local v9, "toneUri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 244
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 246
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 247
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 252
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 255
    :cond_5
    :goto_1
    const-string v0, "RingtoneManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActualDefaultRingtoneUri type is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toneUri is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 256
    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v7

    .line 250
    .local v7, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RingtoneManagerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v7    # "ex":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 2
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, -0x1

    .line 316
    if-nez p0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 318
    :cond_1
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    const/4 v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    const/4 v0, 0x2

    goto :goto_0

    .line 322
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    const/4 v0, 0x4

    goto :goto_0

    .line 324
    :cond_4
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 325
    const/16 v0, 0x20

    goto :goto_0

    .line 326
    :cond_5
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 327
    const/16 v0, 0x8

    goto :goto_0

    .line 328
    :cond_6
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 329
    const/16 v0, 0x10

    goto :goto_0

    .line 330
    :cond_7
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 331
    const/16 v0, 0x40

    goto :goto_0

    .line 332
    :cond_8
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 333
    const/16 v0, 0x80

    goto :goto_0

    .line 334
    :cond_9
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 335
    const/16 v0, 0x100

    goto :goto_0

    .line 336
    :cond_a
    sget-object v1, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const/16 v0, 0x200

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 354
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 375
    :goto_0
    return-object v0

    .line 356
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 357
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 358
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 359
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 360
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 361
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_VIDEOCALL_URI:Landroid/net/Uri;

    goto :goto_0

    .line 362
    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    .line 363
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM2_URI:Landroid/net/Uri;

    goto :goto_0

    .line 364
    :cond_4
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_5

    .line 365
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM2_URI:Landroid/net/Uri;

    goto :goto_0

    .line 366
    :cond_5
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 367
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_TIMER_ALERT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 368
    :cond_6
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_7

    .line 369
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGTONE_SIM3_URI:Landroid/net/Uri;

    goto :goto_0

    .line 370
    :cond_7
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_8

    .line 371
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_NOTIFICATION_SIM3_URI:Landroid/net/Uri;

    goto :goto_0

    .line 372
    :cond_8
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_9

    .line 373
    sget-object v0, Lcom/lge/provider/LGSettings;->DEFAULT_RINGFORME_URI:Landroid/net/Uri;

    goto :goto_0

    .line 375
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getRingtoneWithStreamType(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I

    .prologue
    .line 150
    :try_start_0
    new-instance v1, Landroid/media/RingtoneEx;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Landroid/media/RingtoneEx;-><init>(Landroid/content/Context;ZI)V

    .line 151
    .local v1, "r":Landroid/media/Ringtone;
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "r":Landroid/media/Ringtone;
    :goto_0
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "RingtoneManagerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 195
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 196
    const-string v0, "ringtone"

    .line 216
    :goto_0
    return-object v0

    .line 197
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "notification_sound"

    goto :goto_0

    .line 199
    :cond_1
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_2

    .line 200
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 201
    :cond_2
    and-int/lit8 v0, p0, 0x20

    if-eqz v0, :cond_3

    .line 202
    const-string v0, "ringtone_videocall"

    goto :goto_0

    .line 203
    :cond_3
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_4

    .line 204
    const-string v0, "ringtone_sim2"

    goto :goto_0

    .line 205
    :cond_4
    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_5

    .line 206
    const-string v0, "notification_sound_sim2"

    goto :goto_0

    .line 207
    :cond_5
    and-int/lit8 v0, p0, 0x40

    if-eqz v0, :cond_6

    .line 208
    const-string v0, "timer_alert"

    goto :goto_0

    .line 209
    :cond_6
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_7

    .line 210
    const-string v0, "ringtone_sim3"

    goto :goto_0

    .line 211
    :cond_7
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_8

    .line 212
    const-string v0, "notification_sound_sim3"

    goto :goto_0

    .line 213
    :cond_8
    and-int/lit16 v0, p0, 0x200

    if-eqz v0, :cond_9

    .line 214
    const-string v0, "ringforme"

    goto :goto_0

    .line 216
    :cond_9
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getStaticDefaultToneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .prologue
    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "uriString":Ljava/lang/String;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ringtone_default"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_0
    :goto_0
    const-string v1, "RingtoneManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStaticDefaultToneUri type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " uri is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz v0, :cond_3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_1
    return-object v1

    .line 293
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_default"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alarm_default"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 300
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 102
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    new-instance v0, Lcom/lge/media/RingtoneManagerEx;

    invoke-direct {v0, p0}, Lcom/lge/media/RingtoneManagerEx;-><init>(Landroid/content/Context;)V

    .line 128
    .local v0, "rm":Lcom/lge/media/RingtoneManagerEx;
    invoke-virtual {v0}, Lcom/lge/media/RingtoneManagerEx;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lge/media/RingtoneManagerEx;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 130
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/lge/media/RingtoneManagerEx;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/lge/media/RingtoneManagerEx;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 134
    :cond_0
    return-object v1
.end method

.method protected static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 105
    if-eqz p1, :cond_1

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 111
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 115
    .end local v0    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 387
    invoke-static {p0}, Lcom/lge/media/RingtoneManagerEx;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 270
    invoke-static {p1}, Lcom/lge/media/RingtoneManagerEx;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "setting":Ljava/lang/String;
    const-string v1, "RingtoneManagerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActualDefaultRingtoneUri getSettingForType type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ringtoneUri is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v3, -0x3

    invoke-static {v2, v0, v1, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public inferStreamType()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/lge/media/RingtoneManagerEx;->mType:I

    sparse-switch v0, :sswitch_data_0

    .line 403
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 395
    :sswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 400
    :sswitch_1
    const/4 v0, 0x5

    goto :goto_0

    .line 393
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x10 -> :sswitch_1
        0x100 -> :sswitch_1
    .end sparse-switch
.end method

.method protected setFilterColumnsList(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/media/RingtoneManagerEx;->mFilterColumns:Ljava/util/List;

    .line 161
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 162
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 163
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 166
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 169
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 172
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 175
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 178
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    :cond_5
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_6

    .line 181
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_6
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_7

    .line 184
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_7
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_8

    .line 187
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_8
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_9

    .line 190
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    :cond_9
    return-void
.end method
