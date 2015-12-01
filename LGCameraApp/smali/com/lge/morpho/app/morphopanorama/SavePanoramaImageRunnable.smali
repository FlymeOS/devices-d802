.class public Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;
.super Ljava/lang/Object;
.source "SavePanoramaImageRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;,
        Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDateTaken:[J

.field private mListner:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;

.field private mLocation:Landroid/location/Location;

.field private mLock:Ljava/lang/Object;

.field private mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

.field private mOutputType:I

.field private mSaveDirPath:Ljava/lang/String;

.field private mSaveFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stitcher"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .param p3, "info"    # Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->LOG_TAG:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 51
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mContext:Landroid/content/Context;

    .line 52
    iget-object v0, p3, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;->mSaveDir:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mSaveDirPath:Ljava/lang/String;

    .line 53
    iget-object v0, p3, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;->mSaveFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mSaveFileName:Ljava/lang/String;

    .line 54
    iget v0, p3, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;->mOutputType:I

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mOutputType:I

    .line 55
    iget-object v0, p3, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;->mDate:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mDateTaken:[J

    .line 56
    iget-object v0, p3, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SaveInfo;->mLocation:Landroid/location/Location;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mLocation:Landroid/location/Location;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mLock:Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;Landroid/location/Location;I)I
    .locals 18
    .param p1, "directory"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "dateTaken"    # [J
    .param p4, "rect"    # Landroid/graphics/Rect;
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "orientation"    # I

    .prologue
    .line 101
    const/4 v2, 0x1

    new-array v6, v2, [I

    .line 103
    .local v6, "output_size":[I
    const/4 v2, 0x0

    aget-wide v4, p3, v2

    invoke-static {v4, v5}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v7

    .line 104
    .local v7, "first_date":Ljava/lang/String;
    const/4 v2, 0x1

    aget-wide v4, p3, v2

    invoke-static {v4, v5}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->createDateStringForAppSeg(J)Ljava/lang/String;

    move-result-object v8

    .line 105
    .local v8, "last_date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    const/4 v9, 0x1

    move-object/from16 v4, p4

    move/from16 v5, p6

    invoke-virtual/range {v2 .. v9}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v17

    .line 107
    .local v17, "ret":I
    if-eqz v17, :cond_0

    .line 108
    sget-object v2, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoImageStitcher.saveOutputJpeg error ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    return v17

    .line 111
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v12, "image/jpeg"

    const/4 v13, 0x0

    const/4 v2, 0x0

    aget-wide v14, p3, v2

    move-object v11, v3

    move-object/from16 v16, p5

    invoke-static/range {v10 .. v16}, Lcom/lge/morpho/utils/multimedia/MediaProviderUtils;->addImageExternal(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;IJLandroid/location/Location;)Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 65
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mSaveDirPath:Ljava/lang/String;

    .line 66
    .local v1, "directory":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mSaveFileName:Ljava/lang/String;

    .line 67
    .local v2, "output_file_name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 69
    .local v8, "output_file_path":Ljava/lang/String;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 71
    .local v4, "output_rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v0, v4}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getBoundingRect(Landroid/graphics/Rect;)I

    move-result v9

    .line 72
    .local v9, "ret":I
    if-eqz v9, :cond_0

    .line 73
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMorphoImageStitcher.getBoundingRect error ret:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    iget v0, v4, Landroid/graphics/Rect;->right:I

    iget v3, v4, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v3

    .line 84
    .local v10, "width":I
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    sub-int v7, v0, v3

    .line 85
    .local v7, "height":I
    sget-object v0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutImageSize: w="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " h="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v3, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mDateTaken:[J

    iget-object v5, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mLocation:Landroid/location/Location;

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->saveOutputImage(Ljava/lang/String;Ljava/lang/String;[JLandroid/graphics/Rect;Landroid/location/Location;I)I

    move-result v9

    .line 87
    if-nez v9, :cond_2

    .line 88
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mLocation:Landroid/location/Location;

    invoke-static {v8, v0}, Lcom/lge/morpho/utils/multimedia/JpegHandler;->setInExif(Ljava/lang/String;Landroid/location/Location;)V

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mListner:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;

    if-eqz v0, :cond_1

    .line 94
    iget-object v3, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mListner:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;

    invoke-interface {v0, v8}, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;->onSavePanoramaImage(Ljava/lang/String;)V

    .line 96
    monitor-exit v3

    .line 98
    :cond_1
    return-void

    .line 90
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSavePanoramaImageListener(Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 44
    :try_start_0
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable;->mListner:Lcom/lge/morpho/app/morphopanorama/SavePanoramaImageRunnable$SavePanoramaImageListener;

    .line 45
    monitor-exit v1

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
