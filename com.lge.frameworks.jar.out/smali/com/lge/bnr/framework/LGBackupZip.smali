.class public Lcom/lge/bnr/framework/LGBackupZip;
.super Ljava/lang/Object;
.source "LGBackupZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static final COMPRESSION_LEVEL:I = 0x0

.field public static final EXTERNAL_STORAGE:Ljava/lang/String; = "/external@"

.field private static final FS:C

.field public static final INTERNAL_STORAGE:Ljava/lang/String; = "/internal@"

.field private static final LOG_TAG:Ljava/lang/String; = "[BNRZip]"

.field public static final ONLYEXTERNAL_STORAGE:Ljava/lang/String; = "/onlyExternal@"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/lge/bnr/framework/LGBackupZip;->FS:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private calculateProgressRatio(Ljava/util/List;I)Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    .locals 16
    .param p2, "progressRange"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;I)",
            "Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "pSrcFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v10, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v13}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;-><init>(Lcom/lge/bnr/framework/LGBackupZip;I)V

    .line 60
    .local v10, "progress":Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    invoke-direct/range {p0 .. p1}, Lcom/lge/bnr/framework/LGBackupZip;->getTotalFileSize(Ljava/util/List;)J

    move-result-wide v6

    .line 62
    .local v6, "lTotalFileSize":J
    const/4 v12, 0x0

    .line 63
    .local v12, "total_Progress":I
    const/4 v8, 0x0

    .line 64
    .local v8, "max":I
    const/4 v9, 0x0

    .line 65
    .local v9, "max_index":I
    const/4 v2, 0x0

    .line 67
    .local v2, "belowOneCnt":B
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-gtz v13, :cond_0

    .line 68
    new-instance v13, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v14, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-direct {v13, v14}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;)V

    throw v13

    .line 72
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_2

    .line 74
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 76
    .local v4, "filesize":J
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    move/from16 v0, p2

    int-to-long v14, v0

    mul-long/2addr v14, v4

    div-long/2addr v14, v6

    long-to-int v14, v14

    aput v14, v13, v3

    .line 78
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    const/4 v14, 0x1

    if-ge v13, v14, :cond_1

    .line 79
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    const/4 v14, 0x1

    aput v14, v13, v3

    .line 80
    add-int/lit8 v13, v2, 0x1

    int-to-byte v2, v13

    .line 83
    :cond_1
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    add-int/2addr v12, v13

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    .end local v4    # "filesize":J
    :cond_2
    move/from16 v0, p2

    if-le v12, v0, :cond_5

    .line 88
    const/4 v3, 0x0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_4

    .line 89
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    if-le v13, v8, :cond_3

    .line 90
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v8, v13, v3

    .line 91
    move v9, v3

    .line 88
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 95
    :cond_4
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v14

    aget v14, v14, v9

    sub-int/2addr v14, v2

    aput v14, v13, v9

    .line 98
    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v3, v13, :cond_7

    .line 99
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 101
    .restart local v4    # "filesize":J
    const-wide/16 v14, 0x800

    div-long v14, v4, v14

    long-to-int v11, v14

    .line 103
    .local v11, "step":I
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    aget v13, v13, v3

    if-gtz v13, :cond_6

    .line 105
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    const/4 v14, 0x1

    aput v14, v13, v3

    .line 108
    :cond_6
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$100(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v13

    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->maxProgress:[I
    invoke-static {v10}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$000(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v14

    aget v14, v14, v3

    div-int v14, v11, v14

    aput v14, v13, v3

    .line 98
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 112
    .end local v4    # "filesize":J
    .end local v11    # "step":I
    :cond_7
    return-object v10
.end method

.method private getTotalFileSize(Ljava/util/List;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "pSrcFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v2, 0x0

    .line 48
    .local v2, "lTotalFileSize":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 49
    .local v1, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 50
    goto :goto_0

    .line 52
    .end local v1    # "srcFile":Ljava/io/File;
    :cond_0
    return-wide v2
.end method

.method private writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "baos"    # Ljava/io/ByteArrayOutputStream;
    .param p4, "bnr"    # Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "zipOutput":[B
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 123
    array-length v1, v0

    if-lez v1, :cond_0

    .line 125
    array-length v1, v0

    invoke-interface {p4, p1, p2, v0, v1}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->transferByteArray(Ljava/lang/String;Ljava/lang/String;[BI)V

    .line 126
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 128
    :cond_0
    return-void
.end method


# virtual methods
.method public closeStreamSilently(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "pInStreamObj"    # Ljava/io/InputStream;

    .prologue
    .line 415
    if-eqz p1, :cond_0

    .line 417
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public closeStreamSilently(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "pOutStreamObj"    # Ljava/io/OutputStream;

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 407
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;JJII)Ljava/util/ArrayList;
    .locals 35
    .param p1, "pZipFileName"    # Ljava/lang/String;
    .param p2, "pUnZipDirPath"    # Ljava/lang/String;
    .param p3, "bnr"    # Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "zipSrcLength"    # J
    .param p9, "startProgress"    # I
    .param p10, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/lang/String;",
            "JJII)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v21, "sUnzipFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v18, 0x0

    .line 269
    .local v18, "raf":Ljava/io/RandomAccessFile;
    const/16 v25, 0x0

    .line 270
    .local v25, "zipInputStream":Ljava/util/zip/ZipInputStream;
    const/4 v12, 0x0

    .line 271
    .local v12, "fis":Ljava/io/FileInputStream;
    const/4 v14, 0x0

    .line 273
    .local v14, "fos":Ljava/io/FileOutputStream;
    move/from16 v4, p9

    .line 275
    .local v4, "accumulateProgress":I
    const-wide/16 v22, 0x0

    .line 277
    .local v22, "stepPerOneProgress":J
    const-wide/16 v30, 0x1

    mul-long v10, p7, v30

    .line 279
    .local v10, "estimateZipOutLength":J
    sub-int v7, p10, p9

    .line 281
    .local v7, "completeProgress":I
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ge v7, v0, :cond_0

    .line 282
    const/16 p9, 0x0

    .line 283
    const/16 p10, 0x64

    .line 284
    sub-int v7, p10, p9

    .line 287
    :cond_0
    const-wide/16 v30, 0x200

    div-long v30, v10, v30

    int-to-long v0, v7

    move-wide/from16 v32, v0

    div-long v22, v30, v32

    .line 289
    const-wide/16 v26, 0x0

    .line 293
    .local v26, "writeCnt":J
    :try_start_0
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string v29, "r"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 295
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .local v19, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    move-object/from16 v0, v19

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 297
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 299
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .local v13, "fis":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v28, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v28

    invoke-direct {v0, v13}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .local v28, "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object v15, v14

    .line 303
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .local v15, "fos":Ljava/io/FileOutputStream;
    :goto_0
    if-nez v28, :cond_3

    .line 304
    const/16 v21, 0x0

    .line 377
    .end local v21    # "sUnzipFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v29, "JGZIP"

    const-string v30, "unZipfile = finally"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v19, :cond_2

    .line 381
    :try_start_3
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    if-eqz v28, :cond_1

    .line 385
    :try_start_4
    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 401
    :cond_2
    :goto_2
    return-object v21

    .line 387
    :catch_0
    move-exception v8

    .line 388
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    const-string v29, "JGZIP"

    const-string v30, "zipInputStream close exception"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 391
    .end local v8    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v8

    .line 392
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_6
    const-string v29, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 395
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    throw v29

    .line 307
    .restart local v21    # "sUnzipFileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v9

    .line 309
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    if-nez v9, :cond_5

    .line 310
    const-string v29, "JGZIP"

    const-string v30, "no more Zip file entry"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p10

    invoke-interface {v0, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 377
    const-string v29, "JGZIP"

    const-string v30, "unZipfile = finally"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v19, :cond_2

    .line 381
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 384
    if-eqz v28, :cond_4

    .line 385
    :try_start_9
    invoke-virtual/range {v28 .. v28}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 395
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 315
    :cond_5
    :try_start_a
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v20

    .line 316
    .local v20, "sCurrentEntry":Ljava/lang/String;
    const-string v29, "JGZIP"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "sCurrentEntry "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-nez p2, :cond_8

    .line 321
    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 326
    .local v24, "targetFile":Ljava/io/File;
    :goto_4
    new-instance v17, Ljava/io/File;

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    .local v17, "parentFile":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v29

    if-nez v29, :cond_6

    .line 329
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_6
    new-instance v14, Ljava/io/FileOutputStream;

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 333
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    const/16 v16, 0x0

    .line 334
    .local v16, "iCount":I
    const/16 v29, 0x800

    :try_start_b
    move/from16 v0, v29

    new-array v6, v0, [B
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_12
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 336
    .local v6, "buffer":[B
    if-eqz v28, :cond_c

    move v5, v4

    .line 337
    .end local v4    # "accumulateProgress":I
    .local v5, "accumulateProgress":I
    :cond_7
    :goto_5
    const/16 v29, 0x0

    const/16 v30, 0x800

    :try_start_c
    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v6, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-result v16

    const/16 v29, -0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    .line 340
    const/16 v29, 0x0

    :try_start_d
    move/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v14, v6, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 348
    const-wide/16 v30, 0x1

    add-long v26, v26, v30

    cmp-long v29, v26, v22

    if-nez v29, :cond_7

    .line 349
    move/from16 v0, p10

    if-ge v5, v0, :cond_d

    .line 350
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    :try_start_e
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-interface {v0, v1, v5}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setRestoreProgress(Ljava/lang/String;I)V

    .line 351
    const-string v29, "JGZIP"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "bnr.setRestoreProgress(packageName, accumulateProgress) "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_12
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 355
    :goto_6
    const-wide/16 v26, 0x0

    move v5, v4

    .end local v4    # "accumulateProgress":I
    .restart local v5    # "accumulateProgress":I
    goto :goto_5

    .line 323
    .end local v5    # "accumulateProgress":I
    .end local v6    # "buffer":[B
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v4    # "accumulateProgress":I
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    :cond_8
    :try_start_f
    new-instance v24, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-char v30, Lcom/lge/bnr/framework/LGBackupZip;->FS:C

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_11
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .restart local v24    # "targetFile":Ljava/io/File;
    goto/16 :goto_4

    .line 341
    .end local v4    # "accumulateProgress":I
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    :catch_2
    move-exception v8

    .line 342
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_10
    const-string v29, "JGZIP"

    const-string v30, "removed sd card or no space"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 344
    new-instance v29, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v30, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v29
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 366
    .end local v8    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v8

    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .line 367
    .end local v6    # "buffer":[B
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .end local v20    # "sCurrentEntry":Ljava/lang/String;
    .end local v24    # "targetFile":Ljava/io/File;
    .local v8, "e":Ljava/io/FileNotFoundException;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    :goto_7
    :try_start_11
    const-string v29, "JGZIP"

    const-string v30, "unZipfile = FileNotFoundException"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 369
    new-instance v29, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v30, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v29
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 377
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v29

    :goto_8
    const-string v30, "JGZIP"

    const-string v31, "unZipfile = finally"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v18, :cond_a

    .line 381
    :try_start_12
    invoke-virtual/range {v18 .. v18}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 384
    if-eqz v25, :cond_9

    .line 385
    :try_start_13
    invoke-virtual/range {v25 .. v25}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 395
    :cond_9
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    :cond_a
    :goto_a
    throw v29

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v20    # "sCurrentEntry":Ljava/lang/String;
    .restart local v24    # "targetFile":Ljava/io/File;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_b
    move v4, v5

    .line 360
    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    :cond_c
    :try_start_14
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 362
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_12
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    move-object v15, v14

    .line 364
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 387
    .end local v6    # "buffer":[B
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v20    # "sCurrentEntry":Ljava/lang/String;
    .end local v24    # "targetFile":Ljava/io/File;
    :catch_4
    move-exception v8

    .line 388
    .local v8, "e":Ljava/io/IOException;
    :try_start_15
    const-string v29, "JGZIP"

    const-string v30, "zipInputStream close exception"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto/16 :goto_3

    .line 391
    .end local v8    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v8

    .line 392
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_16
    const-string v29, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    .line 395
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    throw v29

    .line 370
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v13    # "fis":Ljava/io/FileInputStream;
    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_6
    move-exception v8

    .line 371
    .restart local v8    # "e":Ljava/io/IOException;
    :goto_b
    :try_start_17
    const-string v29, "JGZIP"

    const-string v30, "unZipfile = IOException"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 373
    new-instance v29, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v30, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v29 .. v31}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v29
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    .line 387
    .end local v8    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v8

    .line 388
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_18
    const-string v30, "JGZIP"

    const-string v31, "zipInputStream close exception"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    goto :goto_9

    .line 391
    .end local v8    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v8

    .line 392
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_19
    const-string v30, "JGZIP"

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 395
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_a

    .line 395
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v29

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 396
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    throw v29

    .line 377
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catchall_4
    move-exception v29

    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catchall_5
    move-exception v29

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_6
    move-exception v29

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v20    # "sCurrentEntry":Ljava/lang/String;
    .restart local v24    # "targetFile":Ljava/io/File;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_7
    move-exception v29

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catchall_8
    move-exception v29

    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_8

    .line 370
    .end local v6    # "buffer":[B
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v20    # "sCurrentEntry":Ljava/lang/String;
    .end local v24    # "targetFile":Ljava/io/File;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catch_9
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catch_a
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_b
    move-exception v8

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v20    # "sCurrentEntry":Ljava/lang/String;
    .restart local v24    # "targetFile":Ljava/io/File;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_c
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_b

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_d
    move-exception v8

    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_b

    .line 366
    .end local v6    # "buffer":[B
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v16    # "iCount":I
    .end local v17    # "parentFile":Ljava/io/File;
    .end local v20    # "sCurrentEntry":Ljava/lang/String;
    .end local v24    # "targetFile":Ljava/io/File;
    :catch_e
    move-exception v8

    goto/16 :goto_7

    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catch_f
    move-exception v8

    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    :catch_10
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v14    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_11
    move-exception v8

    move-object v14, v15

    .end local v15    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "fos":Ljava/io/FileOutputStream;
    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v16    # "iCount":I
    .restart local v17    # "parentFile":Ljava/io/File;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v20    # "sCurrentEntry":Ljava/lang/String;
    .restart local v24    # "targetFile":Ljava/io/File;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :catch_12
    move-exception v8

    move-object v12, v13

    .end local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v12    # "fis":Ljava/io/FileInputStream;
    move-object/from16 v25, v28

    .end local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    move-object/from16 v18, v19

    .end local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v18    # "raf":Ljava/io/RandomAccessFile;
    goto/16 :goto_7

    .end local v4    # "accumulateProgress":I
    .end local v12    # "fis":Ljava/io/FileInputStream;
    .end local v18    # "raf":Ljava/io/RandomAccessFile;
    .end local v25    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    .restart local v5    # "accumulateProgress":I
    .restart local v6    # "buffer":[B
    .restart local v13    # "fis":Ljava/io/FileInputStream;
    .restart local v19    # "raf":Ljava/io/RandomAccessFile;
    .restart local v28    # "zipInputStream":Ljava/util/zip/ZipInputStream;
    :cond_d
    move v4, v5

    .end local v5    # "accumulateProgress":I
    .restart local v4    # "accumulateProgress":I
    goto/16 :goto_6
.end method

.method public zipAIDL(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/lge/bnr/framework/IBNRFrameworkAPI;Ljava/lang/String;II)V
    .locals 28
    .param p1, "pZipFileName"    # Ljava/lang/String;
    .param p3, "rootPath"    # Ljava/lang/String;
    .param p4, "bnr"    # Lcom/lge/bnr/framework/IBNRFrameworkAPI;
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "startProgress"    # I
    .param p7, "endProgress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lge/bnr/framework/IBNRFrameworkAPI;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/bnr/framework/LGBackupException;
        }
    .end annotation

    .prologue
    .line 135
    .local p2, "pSrcFileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const/16 v21, 0x0

    .line 136
    .local v21, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/4 v14, 0x0

    .line 137
    .local v14, "inputStream":Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 138
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v13, 0x0

    .line 139
    .local v13, "iEntryCount":I
    const/4 v10, 0x0

    .line 140
    .local v10, "fileIndex":I
    const/16 v16, 0x0

    .line 142
    .local v16, "numWriteCnt":I
    sub-int v8, p7, p6

    .line 144
    .local v8, "completeProgress":I
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ge v8, v0, :cond_0

    .line 145
    const/16 p6, 0x0

    .line 146
    const/16 p7, 0x64

    .line 147
    sub-int v8, p7, p6

    .line 150
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/lge/bnr/framework/LGBackupZip;->calculateProgressRatio(Ljava/util/List;I)Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;

    move-result-object v17

    .line 152
    .local v17, "progress":Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;
    move/from16 v4, p6

    .line 155
    .local v4, "accumulateProgress":I
    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 156
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v22, Ljava/util/zip/ZipOutputStream;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 157
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v22, "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    const/16 v23, 0x0

    :try_start_2
    invoke-virtual/range {v22 .. v23}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    .line 159
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    move-object v15, v14

    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .local v15, "inputStream":Ljava/io/BufferedInputStream;
    :cond_1
    :goto_0
    :try_start_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/io/File;

    .line 160
    .local v18, "srcfile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 164
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "File "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " Size "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v14, Ljava/io/BufferedInputStream;

    new-instance v23, Ljava/io/FileInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v23

    invoke-direct {v14, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 167
    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    const/16 v20, 0x0

    .line 168
    .local v20, "zipEntyPath":Ljava/lang/String;
    if-nez p3, :cond_2

    .line 169
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v20

    .line 173
    :goto_1
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "zipEntyPath "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez v20, :cond_3

    move-object v15, v14

    .line 176
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    goto :goto_0

    .line 171
    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto :goto_1

    .line 178
    :cond_3
    new-instance v19, Ljava/util/zip/ZipEntry;

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 179
    .local v19, "zentry":Ljava/util/zip/ZipEntry;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 180
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 181
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipEntry;->setComment(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 183
    if-nez v22, :cond_5

    .line 248
    const/16 v23, 0x0

    sput-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 249
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = finally"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v22, :cond_4

    if-lez v13, :cond_4

    .line 252
    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 258
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    .line 262
    .end local v18    # "srcfile":Ljava/io/File;
    .end local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipEntyPath":Ljava/lang/String;
    :goto_2
    return-void

    .line 255
    .restart local v18    # "srcfile":Ljava/io/File;
    .restart local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipEntyPath":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 256
    .local v9, "e":Ljava/io/IOException;
    :try_start_6
    const-string v23, "[BNRZip]"

    const-string v24, "file_close exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_2

    .line 258
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    throw v23

    .line 186
    :cond_5
    :try_start_7
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 188
    const/4 v12, 0x0

    .line 189
    .local v12, "iCount":I
    const/16 v23, 0x800

    move/from16 v0, v23

    new-array v7, v0, [B

    .line 191
    .local v7, "buffer":[B
    :cond_6
    :goto_3
    const/16 v23, 0x0

    const/16 v24, 0x800

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v14, v7, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-result v12

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v12, v0, :cond_9

    .line 194
    :try_start_8
    sget-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    if-eqz v23, :cond_8

    .line 195
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->ETC_CANCEL_ALL:Lcom/lge/bnr/framework/LGBackupErrorCode;

    const-string v25, "cancle"

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 202
    :catch_1
    move-exception v9

    .line 203
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_9
    const-string v23, "JGZIP"

    const-string v24, "removed sd card or no space"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 205
    :try_start_a
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 206
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 210
    :goto_4
    :try_start_b
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_WRITE:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 241
    .end local v7    # "buffer":[B
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "iCount":I
    .end local v18    # "srcfile":Ljava/io/File;
    .end local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipEntyPath":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v21, v22

    .line 242
    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :goto_5
    :try_start_c
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = FileNotFoundException"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FILE_NOT_FOUND:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 248
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v23

    :goto_6
    const/16 v24, 0x0

    sput-boolean v24, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 249
    const-string v24, "JGZIP"

    const-string v25, "Zipfile = finally"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v21, :cond_7

    if-lez v13, :cond_7

    .line 252
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 258
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    :goto_7
    throw v23

    .line 199
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "iCount":I
    .restart local v18    # "srcfile":Ljava/io/File;
    .restart local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipEntyPath":Ljava/lang/String;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :cond_8
    const/16 v23, 0x0

    :try_start_e
    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v7, v1, v12}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 214
    add-int/lit8 v16, v16, 0x1

    .line 216
    :try_start_f
    # getter for: Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->stepPerOneProgress:[I
    invoke-static/range {v17 .. v17}, Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;->access$100(Lcom/lge/bnr/framework/LGBackupZip$ProgressRate;)[I

    move-result-object v23

    aget v23, v23, v10

    move/from16 v0, v16

    move/from16 v1, v23

    if-lt v0, v1, :cond_6

    .line 217
    add-int/lit8 v4, v4, 0x1

    .line 218
    const/16 v16, 0x0

    .line 219
    move/from16 v0, p7

    if-ge v4, v0, :cond_6

    .line 220
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v1, v4}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_3

    .line 244
    .end local v7    # "buffer":[B
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "iCount":I
    .end local v18    # "srcfile":Ljava/io/File;
    .end local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipEntyPath":Ljava/lang/String;
    :catch_3
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v21, v22

    .line 245
    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .local v9, "e":Ljava/io/IOException;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :goto_8
    :try_start_10
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = IOException"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    new-instance v23, Lcom/lge/bnr/framework/LGBackupException;

    sget-object v24, Lcom/lge/bnr/framework/LGBackupErrorCode;->LBFILEMGR_FAIL_TO_READ:Lcom/lge/bnr/framework/LGBackupErrorCode;

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v23 .. v25}, Lcom/lge/bnr/framework/LGBackupException;-><init>(Lcom/lge/bnr/framework/LGBackupErrorCode;Ljava/lang/String;)V

    throw v23
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 227
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "iCount":I
    .restart local v18    # "srcfile":Ljava/io/File;
    .restart local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipEntyPath":Ljava/lang/String;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    .line 228
    :try_start_11
    const-string v23, "JGZIP"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "filindex "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ne v10, v0, :cond_a

    move/from16 v0, p7

    if-eq v4, v0, :cond_a

    .line 232
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p7

    invoke-interface {v0, v1, v2}, Lcom/lge/bnr/framework/IBNRFrameworkAPI;->setBackupProgress(Ljava/lang/String;I)V

    .line 235
    :cond_a
    invoke-virtual {v14}, Ljava/io/BufferedInputStream;->close()V

    .line 236
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 237
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 238
    add-int/lit8 v13, v13, 0x1

    move-object v15, v14

    .line 240
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_0

    .line 248
    .end local v7    # "buffer":[B
    .end local v12    # "iCount":I
    .end local v18    # "srcfile":Ljava/io/File;
    .end local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .end local v20    # "zipEntyPath":Ljava/lang/String;
    :cond_b
    const/16 v23, 0x0

    sput-boolean v23, Lcom/lge/bnr/framework/LGBackupAgent;->isCancle:Z

    .line 249
    const-string v23, "JGZIP"

    const-string v24, "Zipfile = finally"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    if-eqz v22, :cond_c

    if-lez v13, :cond_c

    .line 252
    :try_start_12
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v6, v3}, Lcom/lge/bnr/framework/LGBackupZip;->writeByteStreamToAIDL(Ljava/lang/String;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;Lcom/lge/bnr/framework/IBNRFrameworkAPI;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 258
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    :goto_9
    move-object v14, v15

    .line 262
    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    goto/16 :goto_2

    .line 255
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    :catch_4
    move-exception v9

    .line 256
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_13
    const-string v23, "[BNRZip]"

    const-string v24, "file_close exception"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto :goto_9

    .line 258
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    throw v23

    .line 255
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_5
    move-exception v9

    .line 256
    .restart local v9    # "e":Ljava/io/IOException;
    :try_start_14
    const-string v24, "[BNRZip]"

    const-string v25, "file_close exception"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 258
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    goto/16 :goto_7

    .line 258
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v23

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/InputStream;)V

    .line 259
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/lge/bnr/framework/LGBackupZip;->closeStreamSilently(Ljava/io/OutputStream;)V

    throw v23

    .line 248
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_4
    move-exception v23

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_5
    move-exception v23

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v21, v22

    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_6

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catchall_6
    move-exception v23

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v21, v22

    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_6

    .line 244
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_6
    move-exception v9

    goto/16 :goto_8

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_8
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v21, v22

    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_8

    .line 241
    .end local v11    # "i$":Ljava/util/Iterator;
    :catch_9
    move-exception v9

    goto/16 :goto_5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "inputStream":Ljava/io/BufferedInputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_b
    move-exception v9

    move-object v5, v6

    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    move-object v14, v15

    .end local v15    # "inputStream":Ljava/io/BufferedInputStream;
    .restart local v14    # "inputStream":Ljava/io/BufferedInputStream;
    move-object/from16 v21, v22

    .end local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    goto/16 :goto_5

    .line 207
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "buffer":[B
    .restart local v9    # "e":Ljava/io/IOException;
    .restart local v12    # "iCount":I
    .restart local v18    # "srcfile":Ljava/io/File;
    .restart local v19    # "zentry":Ljava/util/zip/ZipEntry;
    .restart local v20    # "zipEntyPath":Ljava/lang/String;
    .restart local v22    # "zipOutputStream":Ljava/util/zip/ZipOutputStream;
    :catch_c
    move-exception v23

    goto/16 :goto_4
.end method
