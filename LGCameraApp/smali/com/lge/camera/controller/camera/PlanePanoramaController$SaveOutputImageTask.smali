.class Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "PlanePanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PlanePanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final LATCH_COUNT:I

.field bounding_file_name_with_extension:Ljava/lang/String;

.field directory:Ljava/lang/String;

.field fileName:Ljava/lang/String;

.field mSaveImage:Z

.field output_img_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;Landroid/content/Context;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "SaveImage"    # Z

    .prologue
    .line 189
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 182
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->LATCH_COUNT:I

    .line 190
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SaveOutputImageTask init SaveImage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-boolean p3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->mSaveImage:Z

    .line 192
    return-void
.end method

.method private addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 14
    .param p1, "file_name"    # Ljava/lang/String;
    .param p2, "dateTaken"    # J
    .param p4, "directory"    # Ljava/lang/String;
    .param p5, "output_img_path"    # Ljava/lang/String;
    .param p6, "degree"    # I
    .param p7, "imageRect"    # Landroid/graphics/Rect;

    .prologue
    .line 330
    const-string v2, "CameraApp"

    const-string v3, "SaveOutputImageTask addImage"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    if-eqz p5, :cond_0

    .line 332
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v4

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v5, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempLocation:Landroid/location/Location;

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    const-string v8, "iso"

    invoke-virtual {v2, v8}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v2, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempParams:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v2, p5

    move/from16 v9, p6

    invoke-static/range {v2 .. v10}, Lcom/lge/camera/util/ExifUtil;->setExif(Ljava/lang/String;Ljava/lang/String;FLandroid/location/Location;IILjava/lang/String;ILjava/lang/String;)V

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getImageHandler(Z)Lcom/lge/camera/util/ImageHandler;

    move-result-object v3

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v8, v2, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mTempLocation:Landroid/location/Location;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    move-object v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v9, p4

    move/from16 v11, p6

    invoke-virtual/range {v3 .. v12}, Lcom/lge/camera/util/ImageHandler;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v13

    .line 346
    .local v13, "imageUri":Landroid/net/Uri;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imageUri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 349
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4200(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2, v13}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 350
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v13}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 352
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 357
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    const-string v4, "key_uplus_box"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 359
    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$4700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method private addImageAsApplication(Ljava/lang/String;ILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "file_path"    # Ljava/lang/String;
    .param p2, "degree"    # I
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 319
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask addImageAsApplicationo"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->fileName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->directory:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->output_img_path:Ljava/lang/String;

    move-object v0, p0

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->addImage(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ILandroid/graphics/Rect;)V

    .line 322
    const-string v0, "CameraApp"

    const-string v1, "The original plane panorama image is saved."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 324
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 325
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 326
    return-void
.end method

.method private saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 308
    const-string v1, "CameraApp"

    const-string v2, "SaveOutputImageTask saveOutputJpeg"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v1, v1, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, p1, p2, v3}, Lcom/lge/morpho/core/MorphoPanoramaGP;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I)I

    move-result v0

    .line 310
    .local v0, "ret":I
    if-nez v0, :cond_0

    .line 311
    invoke-direct {p0, p1, v5, p2}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->addImageAsApplication(Ljava/lang/String;ILandroid/graphics/Rect;)V

    .line 316
    :goto_0
    return-void

    .line 313
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "saveOutputJpeg() -> 0x%x"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    .line 196
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask doInBackground START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/PlanePanoramaController;->finishAttachStillImageTask()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V

    .line 200
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask mPanoramaGP.end() START"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    # setter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$902(Lcom/lge/camera/controller/camera/PlanePanoramaController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 202
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    move-result-object v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    new-instance v1, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-direct {v1, v2, v10}, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaController;Lcom/lge/camera/controller/camera/PlanePanoramaController$1;)V

    # setter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1102(Lcom/lge/camera/controller/camera/PlanePanoramaController;Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;)Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    .line 204
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mWaitSaveOutputThread:Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$WaitSaveOutputThread;->start()V

    .line 205
    const-string v0, "CameraApp"

    const-string v1, "mWaitSaveOutputTask started"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v1, v1, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1}, Lcom/lge/morpho/core/MorphoPanoramaGP;->end()I

    move-result v1

    const-string v2, "end() -> "

    invoke-virtual {v0, v1, v2, v7}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 208
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask mPanoramaGP.end() END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->mSaveImage:Z

    if-eqz v0, :cond_1

    .line 210
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    const-string v3, "key_scene_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v2

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1800(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v6}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$1900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v6

    const-string v9, "key_camera_shot_mode"

    invoke-interface {v6, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v7}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->fileName:Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2000(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->directory:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->bounding_file_name_with_extension:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->directory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->bounding_file_name_with_extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->output_img_path:Ljava/lang/String;

    .line 222
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 223
    .local v8, "c_rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v1, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v1, v1, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v1, v8}, Lcom/lge/morpho/core/MorphoPanoramaGP;->getClippingRect(Landroid/graphics/Rect;)I

    move-result v1

    const-string v2, "getClippingRect() -> "

    invoke-virtual {v0, v1, v2, v7}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->checkOK(ILjava/lang/String;Z)Z

    .line 224
    const-string v0, "CameraApp"

    const-string v1, "save.end() END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->output_img_path:Ljava/lang/String;

    invoke-direct {p0, v0, v8}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 247
    .end local v8    # "c_rect":Landroid/graphics/Rect;
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask doInBackground END"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    invoke-virtual {v0}, Lcom/lge/morpho/core/MorphoPanoramaGP;->finish()I

    .line 251
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iput-object v10, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iput-boolean v7, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mIsShooting:Z

    .line 254
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 255
    return-object v10
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask onCancelled"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mIsShooting:Z

    .line 296
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$900(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 298
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # setter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveOutputLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v2}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$902(Lcom/lge/camera/controller/camera/PlanePanoramaController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    if-eqz v0, :cond_1

    .line 301
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    iput-object v2, v0, Lcom/lge/camera/controller/camera/PlanePanoramaController;->mPanoramaGP:Lcom/lge/morpho/core/MorphoPanoramaGP;

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 304
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/PlanePanoramaController;->resetToPreviewState()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V

    .line 305
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 267
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask onPostExecute"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 270
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2400(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2500(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2600(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    const-string v1, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/PlanePanoramaController;->resetToPreviewState()V
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2700(Lcom/lge/camera/controller/camera/PlanePanoramaController;)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$3300(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    new-instance v1, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask$1;-><init>(Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 260
    const-string v0, "CameraApp"

    const-string v1, "SaveOutputImageTask onPreExecute"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2100(Lcom/lge/camera/controller/camera/PlanePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showProgressDialog()V

    .line 262
    iget-object v0, p0, Lcom/lge/camera/controller/camera/PlanePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/PlanePanoramaController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/lge/camera/controller/camera/PlanePanoramaController;->mSaveTimeStart:J
    invoke-static {v0, v2, v3}, Lcom/lge/camera/controller/camera/PlanePanoramaController;->access$2202(Lcom/lge/camera/controller/camera/PlanePanoramaController;J)J

    .line 263
    return-void
.end method
