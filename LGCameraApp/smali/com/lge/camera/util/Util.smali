.class public Lcom/lge/camera/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field private static final NUMBER_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraApp"

.field public static final UNCONSTRAINED:I = -0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .param p0, "cond"    # Z

    .prologue
    .line 476
    if-nez p0, :cond_0

    .line 477
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 479
    :cond_0
    return-void
.end method

.method public static SizeString2WidthHeight(Ljava/lang/String;)[I
    .locals 7
    .param p0, "sizeString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 610
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 611
    .local v1, "sizeArray":[I
    const-string v3, "@"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "removeAt":[Ljava/lang/String;
    aget-object v3, v0, v5

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "sizeStringArray":[Ljava/lang/String;
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v5

    .line 614
    aget-object v3, v2, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v6

    .line 616
    return-object v1
.end method

.method public static adjustViewSize([I[I)[I
    .locals 10
    .param p0, "standard"    # [I
    .param p1, "input"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 625
    aget v4, p0, v8

    .line 626
    .local v4, "nor_width":I
    aget v3, p0, v9

    .line 628
    .local v3, "nor_height":I
    aget v2, p1, v8

    .line 629
    .local v2, "inWidth":I
    aget v1, p1, v9

    .line 630
    .local v1, "inHeight":I
    move v6, v2

    .line 631
    .local v6, "outWidth":I
    move v5, v1

    .line 633
    .local v5, "outHeight":I
    if-le v2, v1, :cond_1

    .line 634
    move v6, v4

    .line 635
    mul-int v7, v1, v6

    div-int v5, v7, v2

    .line 637
    if-le v5, v3, :cond_0

    .line 638
    move v5, v3

    .line 639
    mul-int v7, v2, v5

    div-int v6, v7, v1

    .line 651
    :cond_0
    :goto_0
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 652
    .local v0, "adjustedSize":[I
    aput v6, v0, v8

    .line 653
    aput v5, v0, v9

    .line 655
    return-object v0

    .line 642
    .end local v0    # "adjustedSize":[I
    :cond_1
    move v5, v3

    .line 643
    mul-int v7, v2, v5

    div-int v6, v7, v1

    .line 645
    if-le v6, v4, :cond_0

    .line 646
    move v6, v4

    .line 647
    mul-int v7, v1, v6

    div-int v5, v7, v2

    goto :goto_0
.end method

.method public static appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 2
    .param p0, "array"    # [Ljava/lang/CharSequence;
    .param p1, "element"    # Ljava/lang/CharSequence;

    .prologue
    .line 1021
    array-length v0, p0

    .line 1022
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "array":[Ljava/lang/CharSequence;
    check-cast p0, [Ljava/lang/CharSequence;

    .line 1023
    .restart local p0    # "array":[Ljava/lang/CharSequence;
    aput-object p1, p0, v0

    .line 1024
    return-object p0
.end method

.method public static appendToIntArray([II)[I
    .locals 2
    .param p0, "array"    # [I
    .param p1, "element"    # I

    .prologue
    .line 1013
    array-length v0, p0

    .line 1014
    .local v0, "length":I
    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 1015
    aput p1, p0, v0

    .line 1016
    return-object p0
.end method

.method public static broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 730
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 733
    return-void
.end method

.method public static calcFitSizeOfImageForLCD(Landroid/app/Activity;III)[I
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 873
    const/4 v9, 0x2

    new-array v0, v9, [I

    .line 874
    .local v0, "bitmapSize":[I
    const/4 v2, 0x0

    .line 875
    .local v2, "dstWidth":I
    const/4 v1, 0x0

    .line 877
    .local v1, "dstHeight":I
    if-eqz p0, :cond_3

    .line 878
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 879
    .local v7, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v9, "window"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 880
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 882
    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 883
    .local v6, "lcdWidth":I
    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 884
    .local v4, "lcdHeight":I
    const/4 v9, 0x1

    if-eq p3, v9, :cond_0

    const/4 v9, 0x3

    if-ne p3, v9, :cond_1

    .line 886
    :cond_0
    iget v6, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 887
    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 890
    :cond_1
    const/4 v3, 0x0

    .line 891
    .local v3, "imageRatio":F
    const/4 v5, 0x0

    .line 893
    .local v5, "lcdRatio":F
    if-lt p1, p2, :cond_8

    .line 894
    int-to-float v9, p1

    int-to-float v10, p2

    div-float v3, v9, v10

    .line 895
    int-to-float v9, v6

    int-to-float v10, v4

    div-float v5, v9, v10

    .line 896
    cmpl-float v9, v3, v5

    if-lez v9, :cond_5

    .line 897
    if-eqz p3, :cond_2

    const/4 v9, 0x2

    if-ne p3, v9, :cond_4

    .line 899
    :cond_2
    move v2, v6

    .line 900
    int-to-float v9, v6

    div-float/2addr v9, v3

    float-to-int v1, v9

    .line 940
    .end local v3    # "imageRatio":F
    .end local v4    # "lcdHeight":I
    .end local v5    # "lcdRatio":F
    .end local v6    # "lcdWidth":I
    .end local v7    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v8    # "wm":Landroid/view/WindowManager;
    :cond_3
    :goto_0
    const/4 v9, 0x0

    aput v2, v0, v9

    .line 941
    const/4 v9, 0x1

    aput v1, v0, v9

    .line 942
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dstWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dstHeight = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    return-object v0

    .line 902
    .restart local v3    # "imageRatio":F
    .restart local v4    # "lcdHeight":I
    .restart local v5    # "lcdRatio":F
    .restart local v6    # "lcdWidth":I
    .restart local v7    # "outMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "wm":Landroid/view/WindowManager;
    :cond_4
    move v2, v4

    .line 903
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v1, v9

    goto :goto_0

    .line 906
    :cond_5
    if-eqz p3, :cond_6

    const/4 v9, 0x2

    if-ne p3, v9, :cond_7

    .line 908
    :cond_6
    move v1, v4

    .line 909
    int-to-float v9, v4

    mul-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 911
    :cond_7
    move v2, v4

    .line 912
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v1, v9

    goto :goto_0

    .line 916
    :cond_8
    int-to-float v9, p2

    int-to-float v10, p1

    div-float v3, v9, v10

    .line 917
    int-to-float v9, v6

    int-to-float v10, v4

    div-float v5, v9, v10

    .line 919
    cmpl-float v9, v3, v5

    if-lez v9, :cond_b

    .line 920
    if-eqz p3, :cond_9

    const/4 v9, 0x2

    if-ne p3, v9, :cond_a

    .line 922
    :cond_9
    move v1, v4

    .line 923
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 925
    :cond_a
    move v1, v6

    .line 926
    int-to-float v9, v6

    div-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 929
    :cond_b
    if-eqz p3, :cond_c

    const/4 v9, 0x2

    if-ne p3, v9, :cond_d

    .line 931
    :cond_c
    move v1, v4

    .line 932
    int-to-float v9, v4

    div-float/2addr v9, v3

    float-to-int v2, v9

    goto :goto_0

    .line 934
    :cond_d
    move v2, v4

    .line 935
    int-to-float v9, v4

    mul-float/2addr v9, v3

    float-to-int v1, v9

    goto :goto_0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 558
    .local p0, "object":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 561
    :cond_0
    return-object p0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 593
    if-le p0, p2, :cond_0

    .line 599
    .end local p2    # "max":I
    :goto_0
    return p2

    .line 596
    .restart local p2    # "max":I
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 597
    goto :goto_0

    :cond_1
    move p2, p0

    .line 599
    goto :goto_0
.end method

.method public static clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 438
    if-eqz p0, :cond_0

    .line 439
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 440
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 442
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "clearImageViewDrawable Exception "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearImageViewDrawable(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 393
    if-eqz p0, :cond_0

    .line 394
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 395
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 396
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 398
    invoke-static {v0}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "clearImageViewDrawable Exception "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearImageViewDrawableOnly(Landroid/widget/ImageView;)V
    .locals 4
    .param p0, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 408
    if-eqz p0, :cond_0

    .line 409
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 410
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 411
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 412
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "clearImageViewDrawable Exception "

    invoke-static {v2, v3, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 357
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 358
    .local v4, "w":D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 360
    .local v0, "h":D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 362
    .local v2, "lowerBound":I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 366
    .local v3, "upperBound":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 376
    .end local v2    # "lowerBound":I
    :cond_0
    :goto_2
    return v2

    .line 360
    .end local v3    # "upperBound":I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 362
    .restart local v2    # "lowerBound":I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 370
    .restart local v3    # "upperBound":I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 372
    goto :goto_2

    .line 373
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 376
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 5
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v1, 0x1

    .line 336
    if-ne p2, v1, :cond_0

    .line 352
    :goto_0
    return v1

    .line 339
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/lge/camera/util/Util;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 343
    .local v0, "initialSize":I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 344
    const/4 v1, 0x1

    .line 345
    .local v1, "roundedSize":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 346
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 349
    .end local v1    # "roundedSize":I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 351
    .restart local v1    # "roundedSize":I
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "computeSampleSize() return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static convertDegree(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "resource"    # Landroid/content/res/Resources;
    .param p1, "degree"    # I

    .prologue
    .line 981
    invoke-static {p0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    .end local p1    # "degree":I
    :goto_0
    return p1

    .restart local p1    # "degree":I
    :cond_0
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 p1, v0, 0x168

    goto :goto_0
.end method

.method public static convertDegreeToSurfaceRotation(I)I
    .locals 4
    .param p0, "degree"    # I

    .prologue
    const/4 v0, 0x0

    .line 997
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "degree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    sparse-switch p0, :sswitch_data_0

    .line 1008
    :goto_0
    :sswitch_0
    return v0

    .line 1002
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1004
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1006
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 998
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public static convertLayoutDegree(Landroid/content/res/Resources;I)I
    .locals 1
    .param p0, "resource"    # Landroid/content/res/Resources;
    .param p1, "degree"    # I

    .prologue
    .line 989
    invoke-static {p0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    .end local p1    # "degree":I
    :goto_0
    return p1

    .restart local p1    # "degree":I
    :cond_0
    add-int/lit16 v0, p1, 0x10e

    rem-int/lit16 p1, v0, 0x168

    goto :goto_0
.end method

.method public static createCaptureBitmap([BI)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "data"    # [B
    .param p1, "orientation"    # I

    .prologue
    .line 217
    const/4 v1, -0x1

    const v2, 0xc800

    invoke-static {p0, v1, v2}, Lcom/lge/camera/util/Util;->makeBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v0, p1}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    return-object v0
.end method

.method public static debugStackTrace(Ljava/lang/String;)V
    .locals 6
    .param p0, "from"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Debug] Printing stack trace : from - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 676
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 677
    aget-object v2, v0, v1

    .line 678
    .local v2, "s":Ljava/lang/StackTraceElement;
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Debug] \tat "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 683
    .end local v2    # "s":Ljava/lang/StackTraceElement;
    :cond_0
    return-void
.end method

.method public static distance(FFFF)F
    .locals 4
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 587
    sub-float v0, p0, p2

    .line 588
    .local v0, "dx":F
    sub-float v1, p1, p3

    .line 589
    .local v1, "dy":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method

.method public static distance(II)I
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 583
    sub-int v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static dpToPx(Landroid/content/Context;F)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dp"    # F

    .prologue
    .line 603
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 604
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 605
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 606
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    return v2
.end method

.method public static drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "gContext"    # Landroid/content/Context;
    .param p1, "gBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "gText"    # Ljava/lang/String;
    .param p5, "gFontSize"    # I
    .param p6, "gColor"    # I

    .prologue
    .line 171
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/lge/camera/util/Util;->drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "gContext"    # Landroid/content/Context;
    .param p1, "gBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "gText"    # Ljava/lang/String;
    .param p5, "gFontSize"    # I
    .param p6, "gColor"    # I
    .param p7, "gTypeFace"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 178
    move-object v0, p1

    .line 180
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 182
    .local v1, "bitmapConfig":Landroid/graphics/Bitmap$Config;
    if-nez v1, :cond_0

    .line 183
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 186
    :cond_0
    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v3, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 190
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v4, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 191
    int-to-float v5, p5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 192
    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {v4, v7, v5, v7, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 194
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 195
    .local v2, "bounds":Landroid/graphics/Rect;
    const/4 v5, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, p4, v5, v6, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 197
    if-eqz p7, :cond_1

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-static {v5, p7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 201
    :cond_1
    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v3, p4, v5, v6, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 203
    return-object v0
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 565
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v1, 0x5a

    .line 948
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 950
    .local v0, "rotation":I
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRotation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    packed-switch v0, :pswitch_data_0

    .line 961
    :goto_0
    :pswitch_0
    return v1

    .line 953
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    .line 957
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 959
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 951
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 832
    const/4 v7, 0x2

    new-array v0, v7, [I

    .line 833
    .local v0, "bitmapSize":[I
    const/4 v2, 0x0

    .local v2, "dstWidth":I
    const/4 v1, 0x0

    .line 835
    .local v1, "dstHeight":I
    if-eqz p0, :cond_0

    .line 836
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090008

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v6

    .line 838
    .local v6, "lcdWidth":I
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090009

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 840
    .local v4, "lcdHeight":I
    const/4 v3, 0x0

    .local v3, "imageRatio":F
    const/4 v5, 0x0

    .line 842
    .local v5, "lcdRatio":F
    if-lt p1, p2, :cond_2

    .line 843
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v3, v7, v8

    .line 844
    int-to-float v7, v6

    int-to-float v8, v4

    div-float v5, v7, v8

    .line 845
    cmpl-float v7, v3, v5

    if-lez v7, :cond_1

    .line 846
    move v2, v6

    .line 847
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v1, v7

    .line 865
    .end local v3    # "imageRatio":F
    .end local v4    # "lcdHeight":I
    .end local v5    # "lcdRatio":F
    .end local v6    # "lcdWidth":I
    :cond_0
    :goto_0
    const/4 v7, 0x0

    aput v2, v0, v7

    .line 866
    const/4 v7, 0x1

    aput v1, v0, v7

    .line 867
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dstWidth = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", dstHeight = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-object v0

    .line 849
    .restart local v3    # "imageRatio":F
    .restart local v4    # "lcdHeight":I
    .restart local v5    # "lcdRatio":F
    .restart local v6    # "lcdWidth":I
    :cond_1
    move v1, v4

    .line 850
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v2, v7

    goto :goto_0

    .line 853
    :cond_2
    int-to-float v7, p2

    int-to-float v8, p1

    div-float v3, v7, v8

    .line 854
    int-to-float v7, v6

    int-to-float v8, v4

    div-float v5, v7, v8

    .line 856
    cmpl-float v7, v3, v5

    if-lez v7, :cond_3

    .line 857
    move v1, v6

    .line 858
    int-to-float v7, v6

    div-float/2addr v7, v3

    float-to-int v2, v7

    goto :goto_0

    .line 860
    :cond_3
    move v2, v4

    .line 861
    int-to-float v7, v4

    mul-float/2addr v7, v3

    float-to-int v1, v7

    goto :goto_0
.end method

.method public static getIdFromUri(Landroid/app/Activity;Landroid/net/Uri;)J
    .locals 12
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "contentUri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v10, -0x1

    .line 686
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 688
    .local v2, "proj":[Ljava/lang/String;
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-wide v10

    .line 692
    :cond_1
    const/4 v8, 0x0

    .line 696
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 702
    if-eqz v8, :cond_3

    .line 703
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 704
    .local v7, "count":I
    if-eqz v7, :cond_2

    .line 705
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 706
    .local v6, "column_index":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 707
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 719
    .local v10, "id":J
    if-eqz v8, :cond_0

    .line 720
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v8, 0x0

    goto :goto_0

    .line 719
    .end local v6    # "column_index":I
    .end local v10    # "id":J
    :cond_2
    if-eqz v8, :cond_0

    .line 720
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v8, 0x0

    goto :goto_0

    .line 719
    .end local v7    # "count":I
    :cond_3
    if-eqz v8, :cond_0

    .line 720
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v8, 0x0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v9

    .line 717
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "Could not ID from URI"

    invoke-static {v0, v1, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    if-eqz v8, :cond_0

    .line 720
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v8, 0x0

    goto :goto_0

    .line 719
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 720
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 721
    const/4 v8, 0x0

    :cond_4
    throw v0
.end method

.method public static getPictureSizeScale(ILjava/lang/String;ILjava/lang/String;)D
    .locals 7
    .param p0, "cameraID"    # I
    .param p1, "shotMode"    # Ljava/lang/String;
    .param p2, "projectCode"    # I
    .param p3, "pictureSize"    # Ljava/lang/String;

    .prologue
    const-wide v0, 0x3ff1c71c53f39d1bL    # 1.111111

    const-wide v2, 0x3ff199999999999aL    # 1.1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    .line 757
    const-string v6, "shotmode_continuous"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 758
    sparse-switch p2, :sswitch_data_0

    .line 793
    :cond_0
    :goto_0
    return-wide v0

    .line 762
    :sswitch_0
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    goto :goto_0

    .line 767
    :cond_1
    const-string v6, "shotmode_panorama"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "shotmode_free_panorama"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_0

    .line 771
    const-string v0, "shotmode_plane_panorama"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .line 773
    :cond_2
    const-string v0, "shotmode_dual_camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    const-wide v0, 0x4008cccccccccccdL    # 3.1

    goto :goto_0

    .line 778
    :cond_3
    sparse-switch p2, :sswitch_data_1

    move-wide v0, v4

    .line 793
    goto :goto_0

    :sswitch_1
    move-wide v0, v2

    .line 781
    goto :goto_0

    .line 785
    :sswitch_2
    const-string v0, "1280x960"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 786
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPictureSizeScale1 is = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v2

    .line 787
    goto :goto_0

    .line 789
    :cond_4
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPictureSizeScale2 is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v0, v4

    .line 790
    goto :goto_0

    .line 758
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch

    .line 778
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getRoundedImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "radius"    # I

    .prologue
    const/4 v10, 0x1

    .line 143
    if-nez p0, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 166
    :goto_0
    return-object v1

    .line 147
    :cond_0
    sub-int v8, p1, p3

    div-int/lit8 v2, v8, 0x2

    .line 149
    .local v2, "padding":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 150
    .local v1, "output":Landroid/graphics/Bitmap;
    invoke-static {p0, p1, p2, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 151
    .local v6, "resize":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/BitmapShader;

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v7, v6, v8, v9}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 153
    .local v7, "shader":Landroid/graphics/BitmapShader;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 154
    .local v3, "paint":Landroid/graphics/Paint;
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Rect;

    add-int v8, v2, p3

    add-int v9, v2, p3

    invoke-direct {v4, v2, v2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 159
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 161
    .local v5, "rectf":Landroid/graphics/RectF;
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 162
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 163
    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 164
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static getSampleSize([BLjava/io/FileDescriptor;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)I
    .locals 9
    .param p0, "jpegData"    # [B
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/graphics/BitmapFactory$Options;
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I

    .prologue
    const/4 v7, 0x0

    .line 801
    const/4 v3, 0x4

    .line 802
    .local v3, "sampleSize":I
    if-nez p3, :cond_0

    move v4, v3

    .line 828
    .end local v3    # "sampleSize":I
    .local v4, "sampleSize":I
    :goto_0
    return v4

    .line 805
    .end local v4    # "sampleSize":I
    .restart local v3    # "sampleSize":I
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 806
    if-eqz p0, :cond_3

    .line 807
    array-length v6, p0

    invoke-static {p0, v7, v6, p3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 813
    :cond_1
    :goto_1
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 814
    .local v2, "imageWidth":I
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 815
    .local v0, "imageHeight":I
    if-lt v0, v2, :cond_5

    move v1, v0

    .line 816
    .local v1, "imageLength":I
    :goto_2
    if-lt p5, p4, :cond_6

    move v5, p5

    .line 818
    .local v5, "targetLength":I
    :goto_3
    if-lez v2, :cond_2

    if-gtz v0, :cond_7

    :cond_2
    move v4, v3

    .line 819
    .end local v3    # "sampleSize":I
    .restart local v4    # "sampleSize":I
    goto :goto_0

    .line 808
    .end local v0    # "imageHeight":I
    .end local v1    # "imageLength":I
    .end local v2    # "imageWidth":I
    .end local v4    # "sampleSize":I
    .end local v5    # "targetLength":I
    .restart local v3    # "sampleSize":I
    :cond_3
    if-eqz p1, :cond_4

    .line 809
    const/4 v6, 0x0

    invoke-static {p1, v6, p3}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .line 810
    :cond_4
    if-eqz p2, :cond_1

    .line 811
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_1

    .restart local v0    # "imageHeight":I
    .restart local v2    # "imageWidth":I
    :cond_5
    move v1, v2

    .line 815
    goto :goto_2

    .restart local v1    # "imageLength":I
    :cond_6
    move v5, p4

    .line 816
    goto :goto_3

    .line 821
    .restart local v5    # "targetLength":I
    :cond_7
    const/4 v3, 0x1

    .line 822
    :goto_4
    div-int/lit8 v6, v1, 0x2

    if-lt v6, v5, :cond_8

    .line 823
    div-int/lit8 v1, v1, 0x2

    .line 824
    mul-int/lit8 v3, v3, 0x2

    goto :goto_4

    .line 826
    :cond_8
    iput-boolean v7, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 827
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSampleSize is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 828
    .end local v3    # "sampleSize":I
    .restart local v4    # "sampleSize":I
    goto :goto_0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "s":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 259
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 258
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static isConfigureLandscape(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "resource"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 966
    if-eqz p0, :cond_0

    .line 967
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 969
    :cond_0
    return v0
.end method

.method public static isEqualDegree(Landroid/content/res/Resources;II)Z
    .locals 3
    .param p0, "resource"    # Landroid/content/res/Resources;
    .param p1, "current"    # I
    .param p2, "input"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 973
    invoke-static {p0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 974
    if-ne p1, p2, :cond_1

    .line 976
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 974
    goto :goto_0

    .line 976
    :cond_2
    add-int/lit8 v2, p1, 0x5a

    rem-int/lit16 v2, v2, 0x168

    if-eq v2, p2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isPowerOf2(I)Z
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 569
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadBitmapfromFile(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "strFilename"    # Ljava/lang/String;
    .param p1, "samplesize"    # I

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 385
    .local v1, "opts":Landroid/graphics/BitmapFactory$Options;
    iput p1, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 386
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 388
    return-object v0
.end method

.method public static makeBitmap([BII)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "jpegData"    # [B
    .param p1, "minSideLength"    # I
    .param p2, "maxNumOfPixels"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 268
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 269
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 270
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 272
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 274
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "makeBitmap decordByteArray fail"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v2

    .line 277
    .restart local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p2}, Lcom/lge/camera/util/Util;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 278
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxNumOfPixels : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "options.inSampleSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 282
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 283
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 284
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 286
    .end local v1    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraApp"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static makeBitmap([BZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "jpegData"    # [B
    .param p1, "isFlip"    # Z

    .prologue
    const/4 v3, -0x1

    .line 294
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 295
    .local v9, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 296
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 297
    iget-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v1, :cond_0

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v1, v3, :cond_0

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v1, v3, :cond_1

    .line 299
    :cond_0
    const/4 v7, 0x0

    .line 328
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v7

    .line 301
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 302
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 303
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, v9, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 305
    if-eqz p1, :cond_4

    .line 306
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 309
    .local v5, "sideInversion":Landroid/graphics/Matrix;
    invoke-static {p0}, Lcom/lge/camera/util/ExifUtil;->getOrientation([B)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    invoke-static {p0}, Lcom/lge/camera/util/ExifUtil;->getOrientation([B)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 311
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 316
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 319
    .local v7, "convertBmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 320
    const/4 v0, 0x0

    .line 321
    goto :goto_0

    .line 313
    .end local v7    # "convertBmp":Landroid/graphics/Bitmap;
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 326
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "sideInversion":Landroid/graphics/Matrix;
    .end local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 327
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    const-string v1, "CameraApp"

    const-string v2, "Got oom exception "

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 328
    const/4 v7, 0x0

    goto :goto_0

    .line 323
    .end local v8    # "ex":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "options":Landroid/graphics/BitmapFactory$Options;
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    array-length v2, p0

    invoke-static {p0, v1, v2, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_0
.end method

.method public static makeBitmapFromRawData([BII)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "rawData"    # [B
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 225
    :try_start_0
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 226
    .local v0, "bf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 227
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v0    # "bf":Ljava/nio/ByteBuffer;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v2

    .line 230
    .local v2, "ex":Ljava/lang/OutOfMemoryError;
    const-string v3, "CameraApp"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .param p0, "n"    # I

    .prologue
    .line 573
    add-int/lit8 p0, p0, -0x1

    .line 574
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 575
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 576
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 577
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 578
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 579
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static recursiveRecycle(Landroid/view/View;)V
    .locals 5
    .param p0, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 451
    if-nez p0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 457
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, p0

    .line 458
    check-cast v1, Landroid/view/ViewGroup;

    .line 459
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 460
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 461
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->recursiveRecycle(Landroid/view/View;)V

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 464
    :cond_1
    instance-of v3, p0, Landroid/widget/AdapterView;

    if-nez v3, :cond_2

    .line 465
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 469
    .end local v0    # "count":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    instance-of v3, p0, Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 470
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "rootView":Landroid/view/View;
    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 472
    :cond_3
    const/4 p0, 0x0

    .line 473
    .restart local p0    # "rootView":Landroid/view/View;
    goto :goto_0
.end method

.method public static recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 422
    if-eqz p0, :cond_1

    .line 423
    :try_start_0
    instance-of v3, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 424
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 425
    .local v1, "bm":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 426
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :cond_1
    :goto_0
    return-void

    .line 431
    :catch_0
    move-exception v2

    .line 432
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "recycleBitmapDrawable Exception "

    invoke-static {v3, v4, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "cond"    # Z

    .prologue
    .line 736
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isUPlusBox()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    .line 737
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "SetUplusBoxMode : model is not supported."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 741
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 742
    .local v1, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 745
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "lg.uplusbox.intent.action.CLOUD_BACKUP_PHOTO"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v2, "extra_file_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 747
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 89
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 90
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 96
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    const/4 p0, 0x0

    .line 99
    move-object p0, v7

    .line 106
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 101
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 103
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I
    .param p2, "mirror"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 110
    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p0, :cond_3

    .line 111
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 112
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 114
    if-eqz p2, :cond_2

    .line 115
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 116
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 117
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_4

    .line 118
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 127
    :cond_2
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 129
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_3

    .line 130
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 p0, 0x0

    .line 132
    move-object p0, v7

    .line 139
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    return-object p0

    .line 119
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :cond_4
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_6

    .line 120
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 122
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid degrees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :catch_0
    move-exception v8

    .line 136
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static size2String(II)Ljava/lang/String;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 620
    const-string v0, "x"

    .line 621
    .local v0, "divideChar":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static slideIn(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "from"    # I
    .param p2, "duration"    # I
    .param p3, "al"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v2, 0x0

    .line 514
    if-nez p0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 542
    :goto_0
    return-object v0

    .line 517
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 518
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    packed-switch p1, :pswitch_data_0

    .line 534
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 537
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_1
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 538
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 539
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 541
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 525
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 526
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 528
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 529
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 531
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 532
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static slideOut(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "to"    # I
    .param p2, "duration"    # I
    .param p3, "al"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    const/4 v2, 0x0

    .line 482
    if-nez p0, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 510
    :goto_0
    return-object v0

    .line 485
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 486
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    packed-switch p1, :pswitch_data_0

    .line 502
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 490
    :pswitch_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 505
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_1
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 506
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 507
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 509
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 493
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 494
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 496
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 497
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 499
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x78

    div-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 500
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "duration"    # I
    .param p4, "al"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 547
    if-nez p0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 550
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 551
    .local v0, "anim":Landroid/view/animation/Animation;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 552
    invoke-virtual {v0, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 553
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 554
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
