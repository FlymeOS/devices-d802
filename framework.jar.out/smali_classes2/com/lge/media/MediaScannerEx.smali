.class public Lcom/lge/media/MediaScannerEx;
.super Landroid/media/MediaScanner;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaScannerEx$1;,
        Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;
    }
.end annotation


# static fields
.field private static final CAMERA_DIR:Ljava/lang/String; = "/dcim/"

.field private static final EXTERNAL_STORAGE_SDCARD:Ljava/lang/String; = "/storage/external_SD"

.field private static final EXTERNAL_STORAGE_SDCARD_ID:Ljava/lang/String; = "131073"

.field private static LGE_PRIVATE_LOG:Z = false

.field private static final SCREENSHOT_DIR:Ljava/lang/String; = "/pictures/screenshots/"

.field private static final SETTINGS_ITEM_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaScannerEx"

.field private static final VOICERECORDING_DIR:Ljava/lang/String; = "/my_sounds/"


# instance fields
.field private mDefaultAlarmSet2:Z

.field private mDefaultNotificationSet2:Z

.field private mDefaultRingtoneSet2:Z

.field private mDefaultTimerAlertFilename:Ljava/lang/String;

.field private mDefaultTimerAlertSet:Z

.field private final mExtStorageRingtonesPath:Ljava/lang/String;

.field private mFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v1, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;-><init>(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$1;)V

    iput-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 91
    const-string v1, "ro.config.timer_alert"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertFilename:Ljava/lang/String;

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/lge/media/MediaScannerEx;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ringtones/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/media/MediaScannerEx;->mExtStorageRingtonesPath:Ljava/lang/String;

    .line 96
    const-string v1, "lge_private_log_preferences"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, "lge_private_log_prefs":Landroid/content/SharedPreferences;
    const-string v1, "enabled_lge_private_log"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    .line 99
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/media/MediaScannerEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/media/MediaScannerEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationSet2:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/lge/media/MediaScannerEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationSet2:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/media/MediaScannerEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneSet2:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/lge/media/MediaScannerEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneSet2:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/media/MediaScannerEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmSet2:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/lge/media/MediaScannerEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmSet2:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/media/MediaScannerEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mWasEmptyPriorToScan:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/media/MediaScannerEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertSet:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/media/MediaScannerEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertSet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/media/MediaScannerEx;)Landroid/media/MediaInserter;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaScannerEx;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    return-object v0
.end method

.method private setDefaultSound([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "settingValue"    # Ljava/lang/String;

    .prologue
    .line 294
    const/16 v16, 0x0

    .line 296
    .local v16, "isInternalStorage":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_0

    .line 297
    aget-object v2, p1, v15

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    const/16 v16, 0x1

    .line 303
    :cond_0
    if-eqz v16, :cond_2

    .line 304
    const-string v2, "MediaScannerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaScanner] isInternalStorage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const-string v6, "_display_name=?"

    .line 307
    .local v6, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v7, v2

    .line 308
    .local v7, "selectionArgs":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 310
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 312
    .local v14, "existingDefaultValue":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/media/MediaScannerEx;->mFilesUri:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v5, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 316
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 318
    .local v12, "default_rowId":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;

    invoke-static {v3, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 320
    const-string v2, "MediaScannerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaScanner] Set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v12    # "default_rowId":J
    :cond_1
    if-eqz v10, :cond_2

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 332
    .end local v6    # "where":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v10    # "c":Landroid/database/Cursor;
    .end local v14    # "existingDefaultValue":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 296
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    .line 323
    .restart local v6    # "where":Ljava/lang/String;
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    .restart local v10    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 324
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "MediaScannerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MediaScanner] not to set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    if-eqz v10, :cond_2

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 327
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    .line 328
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method


# virtual methods
.method protected isDrmEnabled()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    .line 109
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method protected makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 338
    move-object v1, p1

    .line 339
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "lowpath":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/lge/media/MediaScannerEx;->mCaseInsensitivePaths:Z

    if-eqz v3, :cond_0

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 344
    :cond_0
    const-string v3, "/dcim/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    const-string v3, "/my_sounds/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/lge/media/MediaScannerEx;->mExtStorageRingtonesPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    const-string v3, "/pictures/screenshots/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 346
    :cond_1
    invoke-super {p0, p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    .line 350
    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    :goto_0
    return-object v0

    .line 348
    .end local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    :cond_2
    iget-object v3, p0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaScanner$FileEntry;

    .restart local v0    # "entry":Landroid/media/MediaScanner$FileEntry;
    goto :goto_0
.end method

.method protected postscan([Ljava/lang/String;)V
    .locals 11
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 269
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/media/MediaScannerEx;->mFilesUri:Landroid/net/Uri;

    const-string v4, "_data is null"

    invoke-interface {v0, v1, v2, v4, v10}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    array-length v0, p1

    if-ne v0, v7, :cond_0

    aget-object v0, p1, v6

    const-string v1, "/storage/external_SD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v3, "values":Landroid/content/ContentValues;
    new-array v5, v7, [Ljava/lang/String;

    const-string v0, "131073"

    aput-object v0, v5, v6

    .line 275
    .local v5, "whereArgs":[Ljava/lang/String;
    const-string v0, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 276
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/media/MediaScannerEx;->mFilesUri:Landroid/net/Uri;

    const-string/jumbo v4, "storage_id=?"

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 281
    .end local v3    # "values":Landroid/content/ContentValues;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;

    const-string v1, "ringtone_default"

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSound([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;

    const-string v1, "notification_default"

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSound([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    const-string v1, "alarm_default"

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/media/MediaScannerEx;->setDefaultSound([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-super {p0, p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 287
    iput-object v10, p0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    .line 289
    return-void
.end method

.method protected prescan(Ljava/lang/String;Z)V
    .locals 24
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    const/4 v15, 0x0

    .line 172
    .local v15, "c":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 173
    .local v6, "where":Ljava/lang/String;
    const/4 v7, 0x0

    .line 174
    .local v7, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 175
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    .line 181
    :goto_0
    invoke-super/range {p0 .. p2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 184
    if-eqz p1, :cond_1

    .line 186
    const-string v6, "_id>? AND _data=?"

    .line 188
    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    const/4 v2, 0x1

    aput-object p1, v7, v2

    .line 194
    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_5

    .line 195
    const-wide/high16 v20, -0x8000000000000000L

    .line 196
    .local v20, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const-string v5, "1000"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 199
    .local v4, "limitUri":Landroid/net/Uri;
    const/16 v22, 0x1

    .line 200
    .local v22, "settingFinished":Z
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 202
    .local v23, "settingsItem":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "notification_sound"

    aput-object v3, v23, v2

    .line 203
    const/4 v2, 0x1

    const-string v3, "ringtone"

    aput-object v3, v23, v2

    .line 204
    const/4 v2, 0x2

    const-string v3, "alarm_alert"

    aput-object v3, v23, v2

    .line 206
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    const/4 v2, 0x3

    move/from16 v0, v17

    if-ge v0, v2, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    aget-object v3, v23, v17

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 208
    .local v16, "existingSetting":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 209
    and-int/lit8 v22, v22, 0x1

    .line 206
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 177
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v16    # "existingSetting":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v20    # "lastId":J
    .end local v22    # "settingFinished":Z
    .end local v23    # "settingsItem":[Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 190
    :cond_1
    const-string v6, "_id>?"

    .line 191
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .end local v7    # "selectionArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v7, v2

    .restart local v7    # "selectionArgs":[Ljava/lang/String;
    goto :goto_1

    .line 211
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v16    # "existingSetting":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v20    # "lastId":J
    .restart local v22    # "settingFinished":Z
    .restart local v23    # "settingsItem":[Ljava/lang/String;
    :cond_2
    and-int/lit8 v22, v22, 0x0

    goto :goto_3

    .line 216
    .end local v16    # "existingSetting":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 217
    if-eqz v15, :cond_4

    .line 218
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 219
    const/4 v15, 0x0

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;

    sget-object v5, Lcom/lge/media/MediaScannerEx;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id"

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 223
    if-nez v15, :cond_7

    .line 259
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v17    # "i":I
    .end local v20    # "lastId":J
    .end local v22    # "settingFinished":Z
    .end local v23    # "settingsItem":[Ljava/lang/String;
    :cond_5
    if-eqz v15, :cond_6

    .line 260
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 264
    :cond_6
    return-void

    .line 227
    .restart local v4    # "limitUri":Landroid/net/Uri;
    .restart local v17    # "i":I
    .restart local v20    # "lastId":J
    .restart local v22    # "settingFinished":Z
    .restart local v23    # "settingsItem":[Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 229
    .local v19, "num":I
    if-eqz v19, :cond_5

    .line 234
    if-eqz v22, :cond_8

    .line 235
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z

    .line 239
    :cond_8
    :goto_4
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 241
    .local v9, "rowId":J
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, "path":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 243
    .local v14, "format":I
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 244
    .local v12, "lastModified":J
    move-wide/from16 v20, v9

    .line 246
    if-eqz v11, :cond_8

    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 247
    move-object/from16 v18, v11

    .line 248
    .local v18, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/media/MediaScannerEx;->mCaseInsensitivePaths:Z

    if-eqz v2, :cond_9

    .line 249
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 251
    :cond_9
    new-instance v8, Landroid/media/MediaScanner$FileEntry;

    invoke-direct/range {v8 .. v14}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V

    .line 252
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx;->mFileCache:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 259
    .end local v4    # "limitUri":Landroid/net/Uri;
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v9    # "rowId":J
    .end local v11    # "path":Ljava/lang/String;
    .end local v12    # "lastModified":J
    .end local v14    # "format":I
    .end local v17    # "i":I
    .end local v18    # "key":Ljava/lang/String;
    .end local v19    # "num":I
    .end local v22    # "settingFinished":Z
    .end local v23    # "settingsItem":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v15, :cond_a

    .line 260
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v2
.end method

.method public scanDir([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 133
    sget-boolean v1, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "MediaScannerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaScanner] scanDir()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    const-string v1, "MediaScannerEx"

    const-string v2, "[MediaScanner] scanDir()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 140
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaScanner;->scanDir([Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public scanDirectories([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "directories"    # [Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 116
    sget-boolean v1, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "MediaScannerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaScanner] scanDirectories()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const-string v1, "MediaScannerEx"

    const-string v2, "[MediaScanner] scanDirectories()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/media/MediaScanner;->scanDirectories([Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "objectHandle"    # I
    .param p4, "format"    # I

    .prologue
    .line 159
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaScanner] scanMtpFile() path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volumeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    .line 166
    return-void

    .line 162
    :cond_0
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaScanner] scanMtpFile() volumeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", format = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-boolean v0, Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaScanner] scanSingleFile() path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", volumeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaScanner;->scanSingleFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaScanner] scanSingleFile() volumeName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
