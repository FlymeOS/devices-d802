.class public Lcom/lge/media/LGMovie;
.super Ljava/lang/Object;
.source "LGMovie.java"


# instance fields
.field private final mLGNativeMovie:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "LGnativeMovie"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "native LGMovie creation failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-wide p1, p0, Lcom/lge/media/LGMovie;->mLGNativeMovie:J

    .line 39
    return-void
.end method

.method public static native decodeByteArray([BII)Lcom/lge/media/LGMovie;
.end method

.method public static decodeFile(Ljava/lang/String;)Lcom/lge/media/LGMovie;
    .locals 3
    .param p0, "pathName"    # Ljava/lang/String;

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/lge/media/LGMovie;->decodeTempStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;

    move-result-object v2

    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v2, 0x0

    .line 90
    :goto_0
    return-object v2

    .line 85
    :cond_0
    instance-of v2, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_1

    .line 86
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0    # "is":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getNativeAsset()J

    move-result-wide v0

    .line 87
    .local v0, "asset":J
    invoke-static {v0, v1}, Lcom/lge/media/LGMovie;->nativeDecodeAsset(J)Lcom/lge/media/LGMovie;

    move-result-object v2

    goto :goto_0

    .line 90
    .end local v0    # "asset":J
    .restart local p0    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-static {p0}, Lcom/lge/media/LGMovie;->nativeDecodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;

    move-result-object v2

    goto :goto_0
.end method

.method private static decodeTempStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;
    .locals 2
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 130
    .local v0, "moov":Lcom/lge/media/LGMovie;
    :try_start_0
    invoke-static {p0}, Lcom/lge/media/LGMovie;->decodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v0

    .line 133
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static native nativeDecodeAsset(J)Lcom/lge/media/LGMovie;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;)Lcom/lge/media/LGMovie;
.end method

.method private static native nativeDestructor(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FF)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/lge/media/LGMovie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    .line 76
    return-void
.end method

.method public native draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end method

.method public native duration()I
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    :try_start_0
    iget-wide v0, p0, Lcom/lge/media/LGMovie;->mLGNativeMovie:J

    invoke-static {v0, v1}, Lcom/lge/media/LGMovie;->nativeDestructor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 125
    return-void

    .line 123
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native height()I
.end method

.method public native isOpaque()Z
.end method

.method public native setTime(I)Z
.end method

.method public native width()I
.end method
