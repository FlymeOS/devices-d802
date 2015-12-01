.class Lcom/lge/camera/PostviewTimeMachineActivity$2;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimeMachineGalleryImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

.field final synthetic val$imageListSize:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iput p2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->val$imageListSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    .prologue
    .line 439
    const/4 v10, 0x0

    .line 440
    .local v10, "imageWidth":I
    const/4 v8, 0x0

    .line 441
    .local v8, "imageHeight":I
    const/4 v4, 0x0

    .line 442
    .local v4, "degree":I
    const/4 v12, 0x2

    new-array v5, v12, [I

    .line 444
    .local v5, "dstSize":[I
    const/4 v9, 0x0

    .line 445
    .local v9, "imageUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 446
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 447
    .local v2, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->val$imageListSize:I

    add-int/lit8 v11, v12, -0x1

    .line 449
    .local v11, "startIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v13, 0x5

    # setter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v12, v13}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$302(Lcom/lge/camera/PostviewTimeMachineActivity;I)I

    .line 452
    move v7, v11

    .local v7, "i":I
    move-object v3, v2

    .end local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .local v3, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    if-ltz v7, :cond_5

    .line 453
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v12, v12, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$400(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Thread;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$400(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 456
    :cond_0
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMakeGalleryImageThread interrupted-mCurrentMakingImageIndex : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v14}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 496
    .end local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    return-void

    .line 462
    .end local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v12, v12, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v12}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/net/Uri;

    move-object v9, v0

    .line 463
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v4

    .line 464
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v10

    .line 465
    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v8

    .line 466
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12, v10, v8}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object v5

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    aget v14, v5, v14

    const/4 v15, 0x1

    aget v15, v5, v15

    invoke-static {v12, v13, v14, v15}, Lcom/lge/camera/util/ImageManager;->loadScaledBitmap(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 471
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v13, v13, Lcom/lge/camera/PostviewTimeMachineActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v4, v14}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v2, v12, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .end local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-le v12, v7, :cond_4

    .line 475
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v7, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # invokes: Lcom/lge/camera/PostviewTimeMachineActivity;->changeThumbnailImages(Landroid/graphics/drawable/BitmapDrawable;I)V
    invoke-static {v12, v2, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$600(Lcom/lge/camera/PostviewTimeMachineActivity;Landroid/graphics/drawable/BitmapDrawable;I)V

    .line 479
    if-eq v7, v11, :cond_2

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$700(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/Timer;

    move-result-object v12

    if-nez v12, :cond_3

    .line 481
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    new-instance v13, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11}, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity$2;I)V

    invoke-virtual {v12, v13}, Lcom/lge/camera/PostviewTimeMachineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 488
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # operator-- for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v12}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$310(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    .line 489
    const-string v12, "CameraApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mMakeGalleryImageThread-mCurrentMakingImageIndex: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I
    invoke-static {v14}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 452
    :cond_4
    add-int/lit8 v7, v7, -0x1

    move-object v3, v2

    .end local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_0

    :cond_5
    move-object v2, v3

    .line 495
    .end local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    goto/16 :goto_1

    .line 493
    .end local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v6

    move-object v2, v3

    .line 494
    .end local v3    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v2    # "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    .local v6, "e":Ljava/lang/Exception;
    :goto_2
    const-string v12, "CameraApp"

    const-string v13, "mMakeGalleryImageThread-Exception: "

    invoke-static {v12, v13, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 493
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_2
.end method
