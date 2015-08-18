.class public Landroid/os/storage/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "StorageUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageLowBytes(Ljava/io/File;)J
    .locals 14
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const-wide/32 v12, 0x1f400000

    .line 26
    const-wide/16 v4, 0xa

    .line 27
    .local v4, "lowPercent":J
    invoke-virtual {p0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v8

    const-wide/16 v10, 0xa

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long v2, v8, v10

    .line 29
    .local v2, "lowBytes":J
    const-wide/32 v6, 0x1f400000

    .line 31
    .local v6, "maxLowBytes":J
    const-string v8, "ro.crypto.state"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "cryptoState":Ljava/lang/String;
    const-string v8, "vold.decrypt"

    const-string v9, ""

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "decrypt":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v8, "trigger_restart_min_framework"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    const-string v8, "encrypted"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "trigger_default_encryption"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "trigger_reset_main"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "trigger_restart_min_framework"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 39
    :cond_1
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/32 v10, 0x6400000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 41
    :goto_0
    return-wide v8

    :cond_2
    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    goto :goto_0
.end method
