.class public Lcom/android/internal/telephony/LGSmsMemoryInfo;
.super Ljava/lang/Object;
.source "LGSmsMemoryInfo.java"


# static fields
.field private static final DATA_PATH:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/LGSmsMemoryInfo;->DATA_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFreeMemSize()J
    .locals 8

    .prologue
    .line 35
    const-wide/16 v2, 0x0

    .line 37
    .local v2, "freeMem":J
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    sget-object v4, Lcom/android/internal/telephony/LGSmsMemoryInfo;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 38
    .local v0, "dataFileStats":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v2, v4, v6

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFreeMemSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "dataFileStats":Landroid/os/StatFs;
    :goto_0
    return-wide v2

    .line 40
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "getFreeMemSize > IllegalArgumentException"

    invoke-static {v4}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getMemFullThreshold(Landroid/content/Context;)J
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-static {p0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v2

    .line 51
    .local v2, "sm":Landroid/os/storage/StorageManager;
    sget-object v3, Lcom/android/internal/telephony/LGSmsMemoryInfo;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 53
    .local v0, "memFullThreshold":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMemFullThreshold = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 54
    return-wide v0
.end method

.method static isSMMAWhenBootUp(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v7, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    .local v4, "result":Z
    const/4 v5, 0x0

    const-string v6, "SMMAWhenBootUp"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v7, :cond_0

    .line 20
    invoke-static {}, Lcom/android/internal/telephony/LGSmsMemoryInfo;->getFreeMemSize()J

    move-result-wide v0

    .line 21
    .local v0, "freeMem":J
    invoke-static {p0}, Lcom/android/internal/telephony/LGSmsMemoryInfo;->getMemFullThreshold(Landroid/content/Context;)J

    move-result-wide v2

    .line 22
    .local v2, "memThreshold":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mFreeMem:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "    memThreshold:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 23
    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 25
    const-string v5, "mStorageAvailable = true"

    invoke-static {v5}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->v(Ljava/lang/String;)I

    .line 26
    invoke-static {p1}, Lcom/android/internal/telephony/LGSmsMoDomain;->getDefault(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/LGSmsMoDomain;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/LGSmsMoDomain;->lgeSetSMSMoDomain(I)V

    .line 27
    const/4 v4, 0x1

    .line 30
    .end local v0    # "freeMem":J
    .end local v2    # "memThreshold":J
    :cond_0
    return v4
.end method
