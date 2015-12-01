.class Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanoJpegPictureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;


# direct methods
.method private constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;)V
    .locals 0

    .prologue
    .line 865
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/controller/camera/PanoramaController;
    .param p2, "x1"    # Lcom/lge/camera/controller/camera/PanoramaController$1;

    .prologue
    .line 865
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;)V

    return-void
.end method

.method private getOlaRotation(I)I
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 925
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    .line 926
    const/4 v0, 0x3

    .line 934
    :goto_0
    return v0

    .line 928
    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    .line 929
    const/4 v0, 0x2

    goto :goto_0

    .line 931
    :cond_1
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_2

    .line 932
    const/4 v0, 0x1

    goto :goto_0

    .line 934
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFrameProcess([B)V
    .locals 11
    .param p1, "data"    # [B

    .prologue
    .line 877
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 878
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 879
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v7, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 880
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 882
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v2, v4

    double-to-int v9, v2

    .line 883
    .local v9, "size":I
    new-array v10, v9, [B

    .line 884
    .local v10, "yuvBuf":[B
    invoke-static {v6, v10}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->rgbBitmapToYuv(Landroid/graphics/Bitmap;[B)I

    .line 888
    invoke-static {p1}, Lcom/lge/camera/util/ExifUtil;->getOrientation([B)I

    move-result v1

    if-nez v1, :cond_3

    .line 889
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 890
    :cond_0
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v3, 0x402

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->getOlaRotation(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    .line 894
    .local v0, "jolabitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    new-array v8, v9, [B

    .line 895
    .local v8, "rotateBuf":[B
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->getOlaRotation(I)I

    move-result v3

    invoke-static {v10, v1, v2, v3}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->rotateYuv([BIII)[B

    move-result-object v8

    .line 897
    iput-object v8, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 921
    .end local v8    # "rotateBuf":[B
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/olaworks/library/AutoPanorama;->setFrameProcess(Lcom/lge/olaworks/datastruct/JOlaBitmap;)V

    .line 922
    return-void

    .line 900
    .end local v0    # "jolabitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    :cond_1
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x402

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->getOlaRotation(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    .line 904
    .restart local v0    # "jolabitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v1

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 905
    new-array v8, v9, [B

    .line 906
    .restart local v8    # "rotateBuf":[B
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->getOlaRotation(I)I

    move-result v3

    invoke-static {v10, v1, v2, v3}, Lcom/lge/olaworks/jni/OlaBitmapGraphicsJNI;->rotateYuv([BIII)[B

    move-result-object v8

    .line 908
    iput-object v8, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    goto :goto_0

    .line 911
    .end local v8    # "rotateBuf":[B
    :cond_2
    iput-object v10, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    goto :goto_0

    .line 915
    .end local v0    # "jolabitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    :cond_3
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x402

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->getOlaRotation(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    .line 918
    .restart local v0    # "jolabitmap":Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iput-object v10, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    goto :goto_0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 869
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PanoramaController;->access$6900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 870
    if-eqz p1, :cond_0

    .line 871
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/PanoramaController$PanoJpegPictureCallback;->setFrameProcess([B)V

    .line 873
    :cond_0
    return-void
.end method
