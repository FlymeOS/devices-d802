.class Landroid/app/WallpaperManager$Globals;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "WallpaperManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/WallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Globals"
.end annotation


# static fields
.field private static final MSG_CLEAR_WALLPAPER:I = 0x1


# instance fields
.field private mDefaultWallpaper:Landroid/graphics/Bitmap;

.field private mService:Landroid/app/IWallpaperManager;

.field private mWallpaper:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 262
    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    .line 263
    const-string/jumbo v1, "wallpaper"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 264
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    .line 265
    return-void
.end method

.method static synthetic access$600(Landroid/app/WallpaperManager$Globals;)Landroid/app/IWallpaperManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/WallpaperManager$Globals;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    return-object v0
.end method

.method private getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 337
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    if-nez v14, :cond_1

    .line 338
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "WallpaperService not running"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v14, 0x0

    .line 435
    :cond_0
    :goto_0
    return-object v14

    .line 343
    :cond_1
    :try_start_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 344
    .local v11, "params":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/WallpaperManager$Globals;->mService:Landroid/app/IWallpaperManager;

    move-object/from16 v0, p0

    invoke-interface {v14, v0, v11}, Landroid/app/IWallpaperManager;->getWallpaper(Landroid/app/IWallpaperManagerCallback;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 345
    .local v6, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v6, :cond_9

    .line 346
    const-string/jumbo v14, "width"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 347
    .local v13, "width":I
    const-string v14, "height"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 348
    .local v7, "height":I
    const-string v14, "isGIF"

    const/4 v15, 0x0

    invoke-virtual {v11, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 350
    .local v9, "isGIF":Z
    sget-boolean v14, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v14, :cond_a

    .line 351
    const-string v14, "drmKey"

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v3

    .line 352
    .local v3, "decInfo":[B
    if-eqz v3, :cond_a

    .line 353
    const/4 v8, 0x0

    .line 355
    .local v8, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 356
    if-nez v8, :cond_2

    .line 357
    const/4 v14, 0x0

    .line 396
    :try_start_2
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_0

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 400
    :catch_0
    move-exception v15

    goto :goto_0

    .line 359
    :cond_2
    const/4 v12, 0x1

    .line 361
    .local v12, "sampleSize":I
    :try_start_3
    # invokes: Landroid/app/WallpaperManager;->getDefaultDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    invoke-static/range {p1 .. p1}, Landroid/app/WallpaperManager;->access$100(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v4

    .line 363
    .local v4, "displaySize":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 364
    .local v2, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 365
    const/4 v14, 0x0

    invoke-static {v8, v14, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 367
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 368
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/lge/lgdrm/DrmContentSession;->openDrmStream(Ljava/io/FileDescriptor;[B)Lcom/lge/lgdrm/DrmStream;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v8

    .line 369
    if-nez v8, :cond_3

    .line 370
    const/4 v14, 0x0

    .line 396
    :try_start_4
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_0

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_0

    .line 400
    :catch_1
    move-exception v15

    goto :goto_0

    .line 373
    :cond_3
    :try_start_5
    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v14, v12

    iget v15, v4, Landroid/graphics/Point;->x:I

    if-gt v14, v15, :cond_4

    iget v14, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v14, v12

    iget v15, v4, Landroid/graphics/Point;->y:I

    if-le v14, v15, :cond_5

    .line 374
    :cond_4
    mul-int/lit8 v12, v12, 0x2

    .line 375
    const/16 v14, 0x800

    if-le v12, v14, :cond_3

    .line 376
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getCurrentWallpaperLocked : displaySize.x = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", displaySize.y = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getCurrentWallpaperLocked : bmOptions.outWidth = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", bmOptions.outHeight = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Too big DRM\'d wallpaper image or too small display size. couldn\'t handle it"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 379
    const/4 v14, 0x0

    .line 396
    :try_start_6
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_0

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_7

    goto/16 :goto_0

    .line 400
    :catch_2
    move-exception v15

    goto/16 :goto_0

    .line 383
    :cond_5
    :try_start_7
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 384
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v12, :cond_6

    .line 385
    iput v12, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 388
    :cond_6
    const/4 v14, 0x0

    invoke-static {v8, v14, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    .local v1, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p1

    invoke-static {v0, v1, v13, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v14

    .line 396
    :try_start_8
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_0

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 400
    :catch_3
    move-exception v15

    goto/16 :goto_0

    .line 391
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v2    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "displaySize":Landroid/graphics/Point;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v12    # "sampleSize":I
    :catch_4
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/OutOfMemoryError;
    :try_start_9
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Can\'t decode file"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 396
    :try_start_a
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_7

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 403
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :cond_7
    :goto_1
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 393
    :catch_5
    move-exception v14

    .line 396
    :try_start_b
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_7

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_1

    .line 400
    :catch_6
    move-exception v14

    goto :goto_1

    .line 395
    :catchall_0
    move-exception v14

    .line 396
    :try_start_c
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 397
    if-eqz v8, :cond_8

    .line 398
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    .line 401
    :cond_8
    :goto_2
    :try_start_d
    throw v14
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_7

    .line 432
    .end local v3    # "decInfo":[B
    .end local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "height":I
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "isGIF":Z
    .end local v11    # "params":Landroid/os/Bundle;
    .end local v13    # "width":I
    :catch_7
    move-exception v14

    .line 435
    :cond_9
    :goto_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 409
    .restart local v6    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v7    # "height":I
    .restart local v9    # "isGIF":Z
    .restart local v11    # "params":Landroid/os/Bundle;
    .restart local v13    # "width":I
    :cond_a
    :try_start_e
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 411
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    if-eqz v9, :cond_c

    .line 412
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 414
    .restart local v1    # "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_b

    .line 415
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bm   width="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", height="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_b
    move-object/from16 v0, p1

    invoke-static {v0, v1, v13, v7}, Landroid/app/WallpaperManager;->generateBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v14

    .line 426
    :try_start_f
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_0

    .line 427
    :catch_8
    move-exception v15

    goto/16 :goto_0

    .line 419
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_c
    :try_start_10
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_10
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v14

    .line 426
    :try_start_11
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_7

    goto/16 :goto_0

    .line 427
    :catch_9
    move-exception v15

    goto/16 :goto_0

    .line 422
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_a
    move-exception v5

    .line 423
    .restart local v5    # "e":Ljava/lang/OutOfMemoryError;
    :try_start_12
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Can\'t decode file"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 426
    :try_start_13
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_3

    .line 427
    :catch_b
    move-exception v14

    goto :goto_3

    .line 425
    .end local v5    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_1
    move-exception v14

    .line 426
    :try_start_14
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7

    .line 429
    :goto_4
    :try_start_15
    throw v14
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_7

    .line 427
    :catch_c
    move-exception v15

    goto :goto_4

    .line 400
    .restart local v3    # "decInfo":[B
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_d
    move-exception v15

    goto :goto_2

    .restart local v5    # "e":Ljava/lang/OutOfMemoryError;
    :catch_e
    move-exception v14

    goto/16 :goto_1
.end method

.method private getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 441
    const/4 v2, 0x0

    .line 442
    .local v2, "is":Ljava/io/InputStream;
    :try_start_0
    const-string/jumbo v4, "ro.lge.device_color"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "deviceColor":Ljava/lang/String;
    const-string v4, "BL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/lge/internal/R$drawable;->default_wallpaper_kddi_blue:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 470
    :goto_0
    if-eqz v2, :cond_8

    .line 472
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 473
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 478
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 488
    .end local v0    # "deviceColor":Ljava/lang/String;
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_1
    return-object v4

    .line 446
    .restart local v0    # "deviceColor":Ljava/lang/String;
    :cond_0
    :try_start_3
    const-string v4, "PK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/lge/internal/R$drawable;->default_wallpaper_kddi_pink:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 449
    :cond_1
    const-string v4, "WH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/lge/internal/R$drawable;->default_wallpaper_kddi_white:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 452
    :cond_2
    const-string v4, "BK"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/lge/internal/R$drawable;->default_wallpaper_kddi_black:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 455
    :cond_3
    const-string v4, "PG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 456
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/lge/internal/R$drawable;->default_wallpaper_kddi_pinkgold:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 458
    :cond_4
    const-string v4, "AQ"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 459
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/lge/internal/R$drawable;->default_wallpaper_kddi_aqua:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 462
    :cond_5
    # getter for: Landroid/app/WallpaperManager;->LRA_OPERATOR:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$200()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 463
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    # invokes: Landroid/app/WallpaperManager;->getLraCustomWallpaper()I
    invoke-static {}, Landroid/app/WallpaperManager;->access$300()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_0

    .line 464
    :cond_6
    # getter for: Landroid/app/WallpaperManager;->ACG_OPERATOR:Z
    invoke-static {}, Landroid/app/WallpaperManager;->access$400()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    # invokes: Landroid/app/WallpaperManager;->getAcgCustomWallpaper()I
    invoke-static {}, Landroid/app/WallpaperManager;->access$500()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    goto/16 :goto_0

    .line 468
    :cond_7
    invoke-static {p1}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto/16 :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_4
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Can\'t decode stream"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .end local v0    # "deviceColor":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_8
    :goto_2
    move-object v4, v5

    .line 488
    goto/16 :goto_1

    .line 477
    .restart local v0    # "deviceColor":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 478
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 481
    :goto_3
    :try_start_7
    throw v4
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 484
    .end local v0    # "deviceColor":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_2

    .line 479
    .restart local v0    # "deviceColor":Ljava/lang/String;
    .restart local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v5

    goto/16 :goto_1

    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v4

    goto :goto_2

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v6

    goto :goto_3
.end method


# virtual methods
.method public forgetLoadedWallpaper()V
    .locals 1

    .prologue
    .line 330
    monitor-enter p0

    .line 331
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 333
    monitor-exit p0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWallpaperChanged()V
    .locals 1

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 276
    monitor-exit p0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public peekWallpaperBitmap(Landroid/content/Context;Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "returnDefault"    # Z

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_0
    const-string/jumbo v6, "ro.build.sbp"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "mEnableSBP":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 283
    const-string/jumbo v6, "persist.sys.cupss.changed"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "mCustChanged":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.cupss.setwallpaper"

    const-string v7, "disable"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "isSIMChanged":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "disable"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[LGE][SBP] CustChanged, prepare default wallpaper Bitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080294

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 289
    .local v5, "wallPaper":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 290
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 292
    .local v4, "myWallpaperManager":Landroid/app/WallpaperManager;
    :try_start_1
    invoke-virtual {v4, v5}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    const/4 v4, 0x0

    .line 299
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 325
    .end local v1    # "isSIMChanged":Ljava/lang/String;
    .end local v2    # "mCustChanged":Ljava/lang/String;
    .end local v4    # "myWallpaperManager":Landroid/app/WallpaperManager;
    .end local v5    # "wallPaper":Landroid/graphics/Bitmap;
    :goto_0
    return-object v5

    .line 293
    .restart local v1    # "isSIMChanged":Ljava/lang/String;
    .restart local v2    # "mCustChanged":Ljava/lang/String;
    .restart local v4    # "myWallpaperManager":Landroid/app/WallpaperManager;
    .restart local v5    # "wallPaper":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LGE][SBP] setChangedCustWallPaper() Exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 297
    const/4 v4, 0x0

    :try_start_4
    monitor-exit p0

    goto :goto_0

    .line 326
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "isSIMChanged":Ljava/lang/String;
    .end local v2    # "mCustChanged":Ljava/lang/String;
    .end local v3    # "mEnableSBP":Ljava/lang/String;
    .end local v4    # "myWallpaperManager":Landroid/app/WallpaperManager;
    .end local v5    # "wallPaper":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 297
    .restart local v1    # "isSIMChanged":Ljava/lang/String;
    .restart local v2    # "mCustChanged":Ljava/lang/String;
    .restart local v3    # "mEnableSBP":Ljava/lang/String;
    .restart local v4    # "myWallpaperManager":Landroid/app/WallpaperManager;
    .restart local v5    # "wallPaper":Landroid/graphics/Bitmap;
    :catchall_1
    move-exception v6

    const/4 v4, 0x0

    :try_start_5
    throw v6

    .line 301
    .end local v4    # "myWallpaperManager":Landroid/app/WallpaperManager;
    :cond_0
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "[LGE][SBP] Default Wallpaper from changed cust is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v1    # "isSIMChanged":Ljava/lang/String;
    .end local v2    # "mCustChanged":Ljava/lang/String;
    .end local v5    # "wallPaper":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 306
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 308
    :cond_2
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_3

    .line 309
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 311
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 313
    :try_start_6
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getCurrentWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 317
    :goto_1
    if-eqz p2, :cond_5

    .line 318
    :try_start_7
    iget-object v6, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    if-nez v6, :cond_4

    .line 319
    invoke-direct {p0, p1}, Landroid/app/WallpaperManager$Globals;->getDefaultWallpaperLocked(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 320
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0

    goto :goto_0

    .line 314
    :catch_1
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    # getter for: Landroid/app/WallpaperManager;->TAG:Ljava/lang/String;
    invoke-static {}, Landroid/app/WallpaperManager;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "No memory load current wallpaper"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 322
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/app/WallpaperManager$Globals;->mDefaultWallpaper:Landroid/graphics/Bitmap;

    .line 325
    :cond_5
    iget-object v5, p0, Landroid/app/WallpaperManager$Globals;->mWallpaper:Landroid/graphics/Bitmap;

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method
