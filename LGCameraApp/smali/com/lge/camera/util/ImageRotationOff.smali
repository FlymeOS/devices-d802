.class public Lcom/lge/camera/util/ImageRotationOff;
.super Lcom/lge/camera/util/ImageHandler;
.source "ImageRotationOff.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/lge/camera/util/ImageHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "directory"    # Ljava/lang/String;
    .param p7, "filename"    # Ljava/lang/String;
    .param p8, "degree"    # I
    .param p9, "isBurst"    # Z

    .prologue
    .line 38
    invoke-static/range {p1 .. p9}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "location"    # Landroid/location/Location;
    .param p6, "directory"    # Ljava/lang/String;
    .param p7, "filename"    # Ljava/lang/String;
    .param p8, "source"    # Landroid/graphics/Bitmap;
    .param p9, "jpegData"    # [B
    .param p10, "degree"    # I
    .param p11, "isBurst"    # Z

    .prologue
    .line 45
    invoke-static/range {p1 .. p11}, Lcom/lge/camera/util/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[BIZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;
    .locals 1
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "dateTaken"    # J
    .param p5, "jpegData"    # [B
    .param p6, "location"    # Landroid/location/Location;
    .param p7, "directory"    # Ljava/lang/String;
    .param p8, "filename"    # Ljava/lang/String;
    .param p9, "degree"    # I
    .param p10, "isBurst"    # Z

    .prologue
    .line 65
    invoke-static/range {p1 .. p10}, Lcom/lge/camera/util/ImageManager;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public convertYuvToJpeg([BIIII)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "quality"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 0
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I
    .param p3, "mirror"    # Z

    .prologue
    .line 59
    return-object p1
.end method

.method public resetRotation()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public saveContiShotImage([BLjava/lang/String;III)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "rotation"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 55
    const/4 v0, -0x1

    return v0
.end method

.method public saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "jpegData"    # [B
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "filename"    # Ljava/lang/String;
    .param p4, "ext"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p1, p2, p3, p4}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setRotation(Landroid/hardware/Camera$Parameters;I)Z
    .locals 1
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "rotation"    # I

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public startOlaPanorama(Landroid/hardware/Camera$Parameters;I)V
    .locals 0
    .param p1, "param"    # Landroid/hardware/Camera$Parameters;
    .param p2, "rotation"    # I

    .prologue
    .line 33
    return-void
.end method
