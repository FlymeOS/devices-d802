.class public Lcom/android/internal/os/GraphicMemoryInfo;
.super Ljava/lang/Object;
.source "GraphicMemoryInfo.java"


# static fields
.field static final LINUX_MEM_AREA_ALLOC_PAGES:Ljava/lang/String; = "LINUX_MEM_AREA_ALLOC_PAGES"

.field static final LINUX_MEM_AREA_VMALLOC:Ljava/lang/String; = "LINUX_MEM_AREA_VMALLOC"

.field static final TAG:Ljava/lang/String; = "GraphicMemoryInfo"

.field static bKgsl:Z

.field static bMali:Z

.field static bNvmap:Z

.field static bPvr:Z

.field static sIon:Z


# instance fields
.field final ION_FILEPATH:Ljava/lang/String;

.field final KGSL_FILEPATH:Ljava/lang/String;

.field final MALI_FILEPATH:Ljava/lang/String;

.field final NVMAP_FILEPATHES:[Ljava/lang/String;

.field final PVR_FILEPATH:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 43
    sput-boolean v0, Lcom/android/internal/os/GraphicMemoryInfo;->bKgsl:Z

    .line 45
    sput-boolean v0, Lcom/android/internal/os/GraphicMemoryInfo;->bNvmap:Z

    .line 47
    sput-boolean v0, Lcom/android/internal/os/GraphicMemoryInfo;->bPvr:Z

    .line 49
    sput-boolean v0, Lcom/android/internal/os/GraphicMemoryInfo;->bMali:Z

    .line 51
    sput-boolean v0, Lcom/android/internal/os/GraphicMemoryInfo;->sIon:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "/sys/class/kgsl/kgsl"

    iput-object v0, p0, Lcom/android/internal/os/GraphicMemoryInfo;->KGSL_FILEPATH:Ljava/lang/String;

    .line 55
    const-string v0, "/sys/kernel/debug/ion"

    iput-object v0, p0, Lcom/android/internal/os/GraphicMemoryInfo;->ION_FILEPATH:Ljava/lang/String;

    .line 57
    const-string v0, "/proc/pvr/mem_areas"

    iput-object v0, p0, Lcom/android/internal/os/GraphicMemoryInfo;->PVR_FILEPATH:Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "/d/nvmap/iovmm/clients"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/d/nvmap/iovmm/allocations"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/os/GraphicMemoryInfo;->NVMAP_FILEPATHES:[Ljava/lang/String;

    .line 61
    const-string v0, "/proc/mali/memory_usage"

    iput-object v0, p0, Lcom/android/internal/os/GraphicMemoryInfo;->MALI_FILEPATH:Ljava/lang/String;

    return-void
.end method

.method private canCheckNumber(Ljava/lang/String;)Z
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 272
    const-string v3, "^\\d+"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 273
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 274
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 275
    .local v0, "bPID":Z
    return v0
.end method

.method private convertByteToKB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "byteString"    # Ljava/lang/String;

    .prologue
    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, "killoByte":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    div-int/lit16 v1, v2, 0x400
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "GraphicMemoryInfo"

    const-string v3, "NumberFormatException - can\'t parse Integer"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getProcFileNumber(Ljava/io/File;)I
    .locals 4
    .param p1, "procdir"    # Ljava/io/File;

    .prologue
    .line 141
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 143
    .local v1, "files":[Ljava/io/File;
    const/4 v0, 0x0

    .line 144
    .local v0, "countDirNumber":I
    if-eqz v1, :cond_1

    .line 145
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 146
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    .end local v2    # "i":I
    :cond_1
    return v0
.end method

.method private makeFileList(Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    .line 164
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 165
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    aget-object v2, v0, v1

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private makeIONMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "bAllProc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 304
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 305
    .local v6, "strBuffer":Ljava/lang/StringBuffer;
    const-string v7, "\n--------------------------------------------ION Heap Start------------------------------------------\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 306
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 307
    .local v5, "rootdir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 308
    sput-boolean v9, Lcom/android/internal/os/GraphicMemoryInfo;->sIon:Z

    .line 309
    const-string v7, "ION information doesn\'t exist. try again after $mount -t debugfs debugfs /sys/kernel/debug\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 334
    .end local v6    # "strBuffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v6

    .line 313
    .restart local v6    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 315
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-direct {p0, v5, v2}, Lcom/android/internal/os/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 317
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 318
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/heaps"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, "heapsdir":Ljava/io/File;
    invoke-direct {p0, v3, v2}, Lcom/android/internal/os/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 322
    .end local v3    # "heapsdir":Ljava/io/File;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 323
    .local v1, "file":Ljava/io/File;
    if-nez p2, :cond_3

    .line 325
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/os/GraphicMemoryInfo;->canCheckNumber(Ljava/lang/String;)Z

    move-result v0

    .line 326
    .local v0, "bPID":Z
    if-nez v0, :cond_2

    .line 330
    .end local v0    # "bPID":Z
    :cond_3
    invoke-direct {p0, v1, v6, v9}, Lcom/android/internal/os/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 331
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 333
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    const-string v7, "--------------------------------------------ION Heap End--------------------------------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeKgslMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;
    .locals 20
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "bAllFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v15, Ljava/lang/StringBuffer;

    const/16 v17, 0x400

    move/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 348
    .local v15, "strBuffer":Ljava/lang/StringBuffer;
    const-string v17, "\n--------------------------------------------KGSL Heap Start-----------------------------------------\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 350
    .local v14, "rootdir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_0

    .line 351
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/internal/os/GraphicMemoryInfo;->bKgsl:Z

    .line 352
    const-string v17, "KGSL information doesn\'t exist\n"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    .line 405
    .end local v15    # "strBuffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v15

    .line 354
    .restart local v15    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v16, "systemWide":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v12, "procList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz p2, :cond_1

    .line 359
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/internal/os/GraphicMemoryInfo;->makeFileList(Ljava/io/File;Ljava/util/List;)V

    .line 360
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 361
    .local v4, "files":Ljava/io/File;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v4, v15, v1}, Lcom/android/internal/os/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 362
    const/16 v17, 0xa

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 363
    const-string v17, "GraphicMemoryInfo"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "has read"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 367
    .end local v4    # "files":Ljava/io/File;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    new-instance v13, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/proc"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v13, "procdir":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/android/internal/os/GraphicMemoryInfo;->makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    .line 372
    .local v10, "pidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 375
    .local v7, "pid":I
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 376
    .local v9, "pidLength":I
    const/4 v8, 0x0

    .line 377
    .local v8, "pidIndex":I
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v11

    .line 378
    .local v11, "procDirLength":I
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/os/GraphicMemoryInfo;->getProcFileNumber(Ljava/io/File;)I

    move-result v17

    div-int v2, v11, v17

    .line 380
    .local v2, "devideNumber":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v11, :cond_4

    .line 383
    rem-int v17, v5, v2

    if-nez v17, :cond_2

    .line 386
    if-ge v8, v9, :cond_2

    .line 387
    :try_start_0
    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 388
    add-int/lit8 v8, v8, 0x1

    .line 396
    :cond_2
    :goto_3
    if-nez p2, :cond_3

    .line 398
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "kernel"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 380
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 390
    :catch_0
    move-exception v3

    .line 391
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v17, "GraphicMemoryInfo"

    const-string v18, "NumberFormatException - can\'t parse Integer"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 392
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 393
    .local v3, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v17, "GraphicMemoryInfo"

    const-string v18, "IndexOutOfBoundsException - can\'t find index"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 402
    .end local v3    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/io/File;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15, v7}, Lcom/android/internal/os/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    goto :goto_4

    .line 404
    :cond_4
    const-string v17, "--------------------------------------------KGSL Heap End-------------------------------------------"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private makeMaliMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 567
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 568
    .local v1, "strBuffer":Ljava/lang/StringBuffer;
    const-string v2, "\n--------------------------------------------MALI Heap start-----------------------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 570
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .local v0, "file_memory_usage":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    sput-boolean v3, Lcom/android/internal/os/GraphicMemoryInfo;->bMali:Z

    .line 573
    const-string v2, "MALI information doesn\'t exist\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 579
    .end local v1    # "strBuffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v1

    .line 576
    .restart local v1    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v0, v1, v3}, Lcom/android/internal/os/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 577
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 578
    const-string v2, "--------------------------------------------MALI Heap End-------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeNvmapMemoryInfo([Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 5
    .param p1, "filePath"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 416
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 417
    .local v2, "strBuffer":Ljava/lang/StringBuffer;
    const-string v3, "\n--------------------------------------------NVMAP Heap start----------------------------------------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    new-instance v1, Ljava/io/File;

    aget-object v3, p1, v4

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v1, "file_client":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v0, "file_allocations":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 422
    sput-boolean v4, Lcom/android/internal/os/GraphicMemoryInfo;->bNvmap:Z

    .line 423
    const-string v3, "NVMAP information doesn\'t exist\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 429
    .end local v2    # "strBuffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v2

    .line 426
    .restart local v2    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v1, v2, v4}, Lcom/android/internal/os/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 427
    invoke-direct {p0, v0, v2, v4}, Lcom/android/internal/os/GraphicMemoryInfo;->readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V

    .line 428
    const-string v3, "--------------------------------------------NVMAP Heap End------------------------------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method private makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    .local p2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 182
    .local v1, "files":[Ljava/io/File;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v5, "subDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v4, "procDir":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 186
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-ge v2, v7, :cond_1

    .line 187
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 188
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    aget-object v7, v1, v2

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v2    # "i":I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 198
    .local v6, "subDirLength":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v6, :cond_3

    .line 200
    :try_start_0
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 202
    .local v3, "index":I
    if-eqz v1, :cond_2

    .line 203
    aget-object v7, v1, v3

    invoke-direct {p0, v7, p2}, Lcom/android/internal/os/GraphicMemoryInfo;->makeProcFileList(Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v3    # "index":I
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v7, "GraphicMemoryInfo"

    const-string v8, "NumberFormatException - can\'t parse Integer"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 210
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    return-object v4
.end method

.method private makePvrMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 439
    new-instance v6, Ljava/lang/StringBuffer;

    const/16 v7, 0x400

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 440
    .local v6, "strBuffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 441
    .local v4, "pidAllocPage":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 442
    .local v5, "pidVmalloc":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v7, "\n--------------------------------------------PVR Heap start------------------------------------------\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, "file_client":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 445
    const/4 v7, 0x0

    sput-boolean v7, Lcom/android/internal/os/GraphicMemoryInfo;->bPvr:Z

    .line 446
    const-string v7, "PVR information doesn\'t exist.\nenable pvr debug feature(DEBUG_LINUX_MEM_AREAS)\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 470
    .end local v6    # "strBuffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v6

    .line 451
    .restart local v6    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-direct {p0, v1, v4, v5}, Lcom/android/internal/os/GraphicMemoryInfo;->parsePVRByPID(Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 454
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 456
    .local v2, "itrAlloc":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 458
    .local v3, "itrVmalloc":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    const-string v7, "<LINUX_MEM_AREA_ALLOC_PAGES>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 460
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 461
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[KB]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 464
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_1
    const-string v7, "<LINUX_MEM_AREA_VMALLOC>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 466
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 467
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "[KB]\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 469
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2
    const-string v7, "--------------------------------------------PVR Heap End--------------------------------------------"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method private mountDebugfs()V
    .locals 4

    .prologue
    .line 122
    const/4 v1, 0x0

    .line 124
    .local v1, "process":Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "adb shell mount -t debugfs debugfs /sys/kernel/debug"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "GraphicMemoryInfo"

    const-string v3, "IOException - Can\'t mount debugfs"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    :cond_1
    throw v2
.end method

.method private parsePVRByPID(Ljava/io/File;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 475
    .local p2, "alloc_pageMmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p3, "vmallocMmap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 476
    .local v4, "br":Ljava/io/BufferedReader;
    const-string v11, "([a-z0-9]+)\\s+(\\d+)\\s+(\\d+)\\s+"

    .line 477
    .local v11, "page_allpcRegx":Ljava/lang/String;
    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 478
    .local v10, "page_allocPattern":Ljava/util/regex/Pattern;
    const-string v17, "([a-z0-9]+)\\s+([a-z0-9]+)\\s+(\\d+)\\s+(\\d+)\\s+"

    .line 479
    .local v17, "vmallocRegx":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v16

    .line 480
    .local v16, "vmallocPattern":Ljava/util/regex/Pattern;
    const/4 v8, 0x0

    .line 481
    .local v8, "matcher":Ljava/util/regex/Matcher;
    const/4 v12, 0x0

    .line 482
    .local v12, "pid":I
    const/4 v14, 0x0

    .line 484
    .local v14, "size":I
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    .end local v4    # "br":Ljava/io/BufferedReader;
    .local v5, "br":Ljava/io/BufferedReader;
    if-eqz v5, :cond_3

    .line 486
    const/4 v13, 0x0

    .line 488
    .local v13, "s":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 490
    const-string v18, "LINUX_MEM_AREA_ALLOC_PAGES"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 494
    invoke-virtual {v10, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 495
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    if-eqz v18, :cond_1

    .line 497
    const/16 v18, 0x3

    :try_start_2
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 498
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v14

    .line 505
    :cond_1
    :goto_1
    :try_start_3
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 506
    const/4 v6, 0x0

    .line 507
    .local v6, "currentSize":I
    const/4 v9, 0x0

    .line 508
    .local v9, "newSize":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 509
    .local v3, "alloc_pageMmapSize":Ljava/lang/Integer;
    if-eqz v3, :cond_2

    .line 510
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 512
    :cond_2
    add-int v9, v6, v14

    .line 513
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 546
    .end local v3    # "alloc_pageMmapSize":Ljava/lang/Integer;
    .end local v6    # "currentSize":I
    .end local v9    # "newSize":I
    :catch_0
    move-exception v18

    .line 550
    .end local v13    # "s":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_b

    .line 552
    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v4, v5

    .line 557
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :cond_4
    :goto_2
    return-void

    .line 499
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "s":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 500
    .local v7, "e":Ljava/lang/NumberFormatException;
    :try_start_5
    const-string v18, "GraphicMemoryInfo"

    const-string v19, "NullPointerException - Can\'t get group information regarding Page_alloc:"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 548
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v18

    move-object v4, v5

    .line 550
    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v13    # "s":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v4, :cond_4

    .line 552
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 553
    :catch_3
    move-exception v18

    goto :goto_2

    .line 515
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "s":Ljava/lang/String;
    :cond_5
    :try_start_7
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 550
    :catchall_0
    move-exception v18

    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .end local v13    # "s":Ljava/lang/String;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_4
    if-eqz v4, :cond_6

    .line 552
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 554
    :cond_6
    :goto_5
    throw v18

    .line 517
    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "s":Ljava/lang/String;
    :cond_7
    :try_start_9
    const-string v18, "LINUX_MEM_AREA_VMALLOC"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 521
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 522
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v18

    if-eqz v18, :cond_8

    .line 524
    const/16 v18, 0x4

    :try_start_a
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 525
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v14

    .line 532
    :cond_8
    :goto_6
    :try_start_b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 533
    const/4 v6, 0x0

    .line 534
    .restart local v6    # "currentSize":I
    const/4 v9, 0x0

    .line 535
    .restart local v9    # "newSize":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 536
    .local v15, "vmallocMmapSize":Ljava/lang/Integer;
    if-eqz v15, :cond_9

    .line 537
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 539
    :cond_9
    add-int v9, v6, v14

    .line 540
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 526
    .end local v6    # "currentSize":I
    .end local v9    # "newSize":I
    .end local v15    # "vmallocMmapSize":Ljava/lang/Integer;
    :catch_4
    move-exception v7

    .line 527
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    const-string v18, "GraphicMemoryInfo"

    const-string v19, "NullPointerException - Can\'t get group information regarding Vmalloc:"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 542
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 553
    .end local v13    # "s":Ljava/lang/String;
    :catch_5
    move-exception v18

    move-object v4, v5

    .line 554
    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 553
    :catch_6
    move-exception v19

    goto/16 :goto_5

    .line 550
    :catchall_1
    move-exception v18

    goto/16 :goto_4

    .line 548
    :catch_7
    move-exception v18

    goto/16 :goto_3

    .end local v4    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "br":Ljava/io/BufferedReader;
    :cond_b
    move-object v4, v5

    .end local v5    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private readFile(Ljava/io/File;Ljava/lang/StringBuffer;I)V
    .locals 8
    .param p1, "file"    # Ljava/io/File;
    .param p2, "strBuffer"    # Ljava/lang/StringBuffer;
    .param p3, "pid"    # I

    .prologue
    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "br":Ljava/io/BufferedReader;
    if-lez p3, :cond_2

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[PID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    if-eqz v2, :cond_0

    .line 231
    const/4 v4, 0x0

    .line 233
    .local v4, "s":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 234
    if-lez p3, :cond_4

    .line 235
    invoke-direct {p0, v4}, Lcom/android/internal/os/GraphicMemoryInfo;->canCheckNumber(Ljava/lang/String;)Z

    move-result v0

    .line 236
    .local v0, "bNumber":Z
    if-eqz v0, :cond_3

    .line 237
    invoke-direct {p0, v4}, Lcom/android/internal/os/GraphicMemoryInfo;->convertByteToKB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 238
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "<KB>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    .end local v0    # "bNumber":Z
    :goto_2
    const/16 v5, 0xa

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 247
    :catch_0
    move-exception v3

    .line 248
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    const-string v5, "GraphicMemoryInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException - Can\'t read file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 254
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_6

    .line 256
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v2

    .line 262
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1
    :goto_3
    return-void

    .line 225
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 240
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "bNumber":Z
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 251
    .end local v0    # "bNumber":Z
    :catch_1
    move-exception v3

    move-object v1, v2

    .line 252
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    const-string v5, "GraphicMemoryInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileNotFoundException - can\'t find file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 254
    if-eqz v1, :cond_1

    .line 256
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 257
    :catch_2
    move-exception v3

    .line 258
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "GraphicMemoryInfo"

    const-string v6, "IOException - Can\'t close bufferead"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 243
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_4
    :try_start_7
    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 254
    :catchall_0
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_5
    if-eqz v1, :cond_5

    .line 256
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 259
    :cond_5
    :goto_6
    throw v5

    .line 257
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    .line 258
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v5, "GraphicMemoryInfo"

    const-string v6, "IOException - Can\'t close bufferead"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 259
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 257
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 258
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v6, "GraphicMemoryInfo"

    const-string v7, "IOException - Can\'t close bufferead"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 254
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_5

    .line 251
    :catch_5
    move-exception v3

    goto :goto_4

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_6
    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method


# virtual methods
.method public printGraphicMemory()Ljava/lang/StringBuffer;
    .locals 4

    .prologue
    .line 71
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x1fa0

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 73
    .local v1, "strBuffer":Ljava/lang/StringBuffer;
    sget-boolean v2, Lcom/android/internal/os/GraphicMemoryInfo;->bKgsl:Z

    if-eqz v2, :cond_0

    .line 75
    :try_start_0
    const-string v2, "/sys/class/kgsl/kgsl"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/GraphicMemoryInfo;->makeKgslMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/internal/os/GraphicMemoryInfo;->bNvmap:Z

    if-eqz v2, :cond_1

    .line 83
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/GraphicMemoryInfo;->NVMAP_FILEPATHES:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/os/GraphicMemoryInfo;->makeNvmapMemoryInfo([Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    :cond_1
    :goto_1
    sget-boolean v2, Lcom/android/internal/os/GraphicMemoryInfo;->bPvr:Z

    if-eqz v2, :cond_2

    .line 93
    :try_start_2
    const-string v2, "/proc/pvr/mem_areas"

    invoke-direct {p0, v2}, Lcom/android/internal/os/GraphicMemoryInfo;->makePvrMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    :cond_2
    :goto_2
    sget-boolean v2, Lcom/android/internal/os/GraphicMemoryInfo;->bMali:Z

    if-eqz v2, :cond_3

    .line 101
    :try_start_3
    const-string v2, "/proc/mali/memory_usage"

    invoke-direct {p0, v2}, Lcom/android/internal/os/GraphicMemoryInfo;->makeMaliMemoryInfo(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 107
    :cond_3
    :goto_3
    sget-boolean v2, Lcom/android/internal/os/GraphicMemoryInfo;->sIon:Z

    if-eqz v2, :cond_4

    .line 109
    :try_start_4
    const-string v2, "/sys/kernel/debug/ion"

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/os/GraphicMemoryInfo;->makeIONMemoryInfo(Ljava/lang/String;Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 115
    :cond_4
    :goto_4
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 95
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 102
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3

    .line 110
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_4
    move-exception v0

    .line 111
    .restart local v0    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4
.end method
