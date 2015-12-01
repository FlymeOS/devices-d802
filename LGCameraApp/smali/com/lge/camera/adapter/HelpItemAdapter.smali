.class public Lcom/lge/camera/adapter/HelpItemAdapter;
.super Landroid/widget/BaseAdapter;
.source "HelpItemAdapter.java"


# static fields
.field private static final PREFERENCE_NOT_FOUND:I = -0x1


# instance fields
.field private mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

.field private mOrientation:I

.field private mStringDesc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringMainMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringMainMenuIcon:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mStringMenu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "mode"    # I
    .param p4, "cameraId"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    .line 60
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 61
    iput p5, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    .line 62
    new-instance v0, Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-direct {v0, p2, p4}, Lcom/lge/camera/dialog/HelpActivityDialog;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    .line 63
    invoke-direct {p0, p3, p4}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeHelpGuideItem(II)V

    .line 64
    return-void
.end method

.method private addColorEffectItemsForCamcorder()V
    .locals 3

    .prologue
    const v2, 0x7f0a00e4

    .line 436
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02bb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    return-void
.end method

.method private addColorEffectItemsForCamera()V
    .locals 3

    .prologue
    const v2, 0x7f0a00e4

    .line 391
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020125

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 394
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private addRecordingModeForFrontVideo()V
    .locals 3

    .prologue
    const v2, 0x7f0a0105

    .line 496
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeHelpNeeded(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02018d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a028a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0359

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0285

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0282

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0309

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private addRecordingModeForMainVideo()V
    .locals 3

    .prologue
    const v2, 0x7f0a0105

    .line 455
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/adapter/HelpItemAdapter;->isRecordingModeHelpNeeded(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02018d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a028a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0359

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 466
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHDRRecordingNameUsed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 467
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 474
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0282

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0309

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0284

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0312

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 482
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0285

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 486
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a030c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0287

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0308

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 469
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method private addShotModeItemsForMainCamera()V
    .locals 10

    .prologue
    const v9, 0x7f0a02b2

    const v8, 0x7f0a025f

    const v7, 0x7f0a00fe

    const v6, 0x7f0a00f9

    const/4 v5, -0x1

    .line 270
    new-instance v0, Lcom/lge/camera/setting/PreferenceInflater;

    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, "inflater":Lcom/lge/camera/setting/PreferenceInflater;
    invoke-static {}, Lcom/lge/camera/properties/PreferenceProperties;->getBackCameraPreferenceResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/PreferenceInflater;->inflate(I)Lcom/lge/camera/setting/CameraPreference;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/setting/PreferenceGroup;

    .line 274
    .local v2, "prefGroup":Lcom/lge/camera/setting/PreferenceGroup;
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 276
    .local v1, "listPref":Lcom/lge/camera/setting/ListPreference;
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v4, 0x7f02019d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a02af

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0044

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a0358

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 286
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a03af

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a03ab

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "shotmode_hdr"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_1

    .line 296
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0352

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a02d5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    :cond_1
    if-eqz v1, :cond_2

    const-string v3, "shotmode_panorama"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 303
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "shotmode_plane_panorama"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_3

    .line 310
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFreePanoramaSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 315
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0102

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a030f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 320
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0104

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a0304

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    :cond_5
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 333
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_d

    .line 334
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0320

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a0321

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_6
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 343
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0267

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a0311

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 348
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 349
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a02f1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a02db

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_8
    :goto_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 362
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a0305

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_9
    return-void

    .line 288
    :cond_a
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isClearShotSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 289
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a0305

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 322
    :cond_b
    if-eqz v1, :cond_5

    const-string v3, "shotmode_continuous"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_c

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v1, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 326
    :cond_c
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a00fa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a02b1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 337
    :cond_d
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0262

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a02d1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 353
    :cond_e
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v4, 0x7f0a0263

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v4, 0x7f0a02da

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3
.end method

.method private addWhiteBalanceItemsForCamcorder()V
    .locals 3

    .prologue
    const v2, 0x7f0a00de

    .line 410
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a029f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method private addWhiteBalanceItemsForCamera()V
    .locals 3

    .prologue
    const v2, 0x7f0a00de

    .line 369
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020244

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a029f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    return-void
.end method

.method private isRecordingModeHelpNeeded(Z)Z
    .locals 3
    .param p1, "isMainCamera"    # Z

    .prologue
    const/4 v1, 0x1

    .line 518
    const/4 v0, 0x0

    .line 520
    .local v0, "numOfSupportingRecordingMode":I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    add-int/lit8 v0, v0, 0x1

    .line 523
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 524
    add-int/lit8 v0, v0, 0x1

    .line 526
    :cond_1
    if-eqz p1, :cond_4

    .line 527
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isWDRSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    add-int/lit8 v0, v0, 0x1

    .line 530
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 531
    add-int/lit8 v0, v0, 0x1

    .line 533
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 534
    add-int/lit8 v0, v0, 0x1

    .line 537
    :cond_4
    if-lt v0, v1, :cond_5

    :goto_0
    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeFrontCameraHelpItem()V
    .locals 7

    .prologue
    const v6, 0x7f0a0358

    const v5, 0x7f0a028a

    const v4, 0x7f0a00f9

    const v3, 0x7f0a003d

    const/4 v2, 0x1

    .line 140
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportLightFrame()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0128

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a028b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedTagLocation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a02e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02cc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedGestureShot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 170
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a03b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a03ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f02019d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0044

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFunctionFrontCameraBeautyShot()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 184
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_9

    .line 185
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_6
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0267

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0311

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_7
    invoke-static {v2}, Lcom/lge/camera/properties/FunctionProperties;->isSupportNightShotModeMenu(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 199
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a029d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a013a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamera()V

    .line 211
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamera()V

    .line 212
    return-void

    .line 188
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0262

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private makeFrontVideoHelpItem()V
    .locals 4

    .prologue
    const v3, 0x7f0a028a

    const v2, 0x7f0a003d

    .line 242
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a016d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedTagLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a02e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addRecordingModeForFrontVideo()V

    .line 264
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamcorder()V

    .line 265
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamcorder()V

    .line 267
    return-void
.end method

.method private makeHelpGuideItem(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 67
    if-nez p1, :cond_1

    .line 68
    if-nez p2, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeMainCameraHelpItem()V

    .line 80
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeFrontCameraHelpItem()V

    goto :goto_0

    .line 74
    :cond_1
    if-nez p2, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeMainVideoHelpItem()V

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->makeFrontVideoHelpItem()V

    goto :goto_0
.end method

.method private makeMainCameraHelpItem()V
    .locals 5

    .prologue
    const v4, 0x7f0a028a

    const v3, 0x7f0a00d9

    const v2, 0x7f0a003d

    .line 83
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedTagLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 101
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a02e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addShotModeItemsForMainCamera()V

    .line 107
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a02fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a0306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSportShot()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a029b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/properties/FunctionProperties;->isSupportNightShotModeMenu(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a00d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a029d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useCheeseShutterTitle()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a013a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a029e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamera()V

    .line 135
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamera()V

    .line 137
    return-void

    .line 125
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private makeMainVideoHelpItem()V
    .locals 4

    .prologue
    const v3, 0x7f0a028a

    const v2, 0x7f0a003d

    .line 215
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    const v1, 0x7f020147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a0047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a016d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02c3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedTagLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    const v1, 0x7f0a02e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    const v1, 0x7f0a02c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addRecordingModeForMainVideo()V

    .line 237
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addWhiteBalanceItemsForCamcorder()V

    .line 238
    invoke-direct {p0}, Lcom/lge/camera/adapter/HelpItemAdapter;->addColorEffectItemsForCamcorder()V

    .line 239
    return-void
.end method

.method private setHelpItemLayout(ILandroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 22
    .param p1, "position"    # I
    .param p2, "tempContext"    # Landroid/content/Context;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 580
    const v19, 0x7f0d00a9

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 581
    .local v11, "mainItemLayout":Landroid/widget/LinearLayout;
    const v19, 0x7f0d00ae

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 582
    .local v15, "subItemLayout":Landroid/widget/LinearLayout;
    const v19, 0x7f0d00ac

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 583
    .local v3, "divider":Landroid/widget/LinearLayout;
    const v19, 0x7f0d00b4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 585
    .local v14, "subDivider":Landroid/widget/LinearLayout;
    const v19, 0x7f0d00ab

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 586
    .local v17, "tvMainMenu":Landroid/widget/TextView;
    const v19, 0x7f0d00b0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 587
    .local v18, "tvSubMenu":Landroid/widget/TextView;
    const v19, 0x7f0d00b1

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 589
    .local v16, "tvDesc":Landroid/widget/TextView;
    const v19, 0x7f0d00aa

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 590
    .local v10, "ivMainIcon":Landroid/widget/ImageView;
    const v19, 0x7f0d00b3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 592
    .local v9, "ivHelpPopupIcon":Landroid/widget/ImageView;
    const v19, 0x7f0d00af

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 593
    .local v6, "helpItemText":Landroid/view/View;
    const v19, 0x7f0d00b2

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 595
    .local v4, "helpItemIcon":Landroid/view/View;
    if-eqz v11, :cond_0

    if-eqz v15, :cond_0

    if-eqz v3, :cond_0

    if-eqz v14, :cond_0

    if-eqz v17, :cond_0

    if-eqz v18, :cond_0

    if-eqz v16, :cond_0

    if-eqz v10, :cond_0

    if-eqz v6, :cond_0

    if-nez v4, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-object p3

    .line 602
    :cond_1
    const-string v20, "CameraApp"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mStringMenu[position] = "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 606
    .local v7, "helpItemTextLp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 609
    .local v5, "helpItemIconLp":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 610
    .local v13, "popupID":I
    new-instance v19, Lcom/lge/camera/adapter/HelpItemAdapter$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/lge/camera/adapter/HelpItemAdapter$1;-><init>(Lcom/lge/camera/adapter/HelpItemAdapter;I)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 618
    .local v12, "mainMenuSize":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v12, :cond_0

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_5

    .line 621
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 622
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 623
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 625
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 626
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/DialogCreater;->getHelpPopupID(I)I

    move-result v19

    if-eqz v19, :cond_4

    .line 629
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 630
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const v19, 0x3f666666    # 0.9f

    :goto_2
    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    const v19, 0x3dcccccd    # 0.1f

    :goto_3
    move/from16 v0, v19

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 639
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 643
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 618
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 630
    :cond_2
    const v19, 0x3f570a3d    # 0.84f

    goto :goto_2

    .line 632
    :cond_3
    const v19, 0x3e23d70a    # 0.16f

    goto :goto_3

    .line 635
    :cond_4
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 637
    const/16 v19, 0x0

    move/from16 v0, v19

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    .line 649
    :cond_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 658
    :cond_6
    const v19, 0x7f0a00d9

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 660
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 661
    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 662
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    sget-object v19, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 671
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 667
    :cond_7
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 668
    const/16 v19, 0x8

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public createDialog(I)V
    .locals 3
    .param p1, "whichPopup"    # I

    .prologue
    .line 698
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Which popup ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->dismissHelpDialog()V

    .line 701
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    iget v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    invoke-virtual {v0, p1, v1}, Lcom/lge/camera/dialog/HelpActivityDialog;->create(II)V

    .line 703
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 541
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x0

    .line 545
    :goto_0
    return v0

    .line 544
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HelpAdapter --- getCount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/lge/camera/adapter/HelpItemAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 549
    const-string v2, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HelpAdapter --- getItem()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mStringMenu[postion] :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 555
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HelpAdapter --- getItemId()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemPosition(Ljava/lang/String;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 679
    const/4 v2, 0x0

    .line 680
    .local v2, "position":I
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 681
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 682
    .local v1, "menuSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 683
    iget-object v3, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    iget-object v4, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    move v2, v0

    .line 689
    .end local v0    # "i":I
    .end local v1    # "menuSize":I
    :cond_0
    return v2

    .line 682
    .restart local v0    # "i":I
    .restart local v1    # "menuSize":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 560
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HelpAdapter --- getView() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v4, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 562
    .local v0, "tempContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 563
    const-string v4, "CameraApp"

    const-string v5, "Cannot getView because tempContext is null"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    :goto_0
    return-object v3

    .line 566
    :cond_1
    move-object v2, p2

    .line 567
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_2

    .line 568
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 570
    .local v1, "vi":Landroid/view/LayoutInflater;
    const v4, 0x7f030013

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 572
    .end local v1    # "vi":Landroid/view/LayoutInflater;
    :cond_2
    if-eqz v2, :cond_0

    .line 575
    invoke-direct {p0, p1, v0, v2}, Lcom/lge/camera/adapter/HelpItemAdapter;->setHelpItemLayout(ILandroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 694
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->dismissHelpDialog()V

    .line 713
    :cond_0
    return-void
.end method

.method public refreshDialog()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    iget v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/dialog/HelpActivityDialog;->refreshDialog(I)V

    .line 719
    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 706
    iput p1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mOrientation:I

    .line 707
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 722
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 724
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMenu:Ljava/util/ArrayList;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 728
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringDesc:Ljava/util/ArrayList;

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 735
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenuIcon:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 736
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mStringMainMenu:Ljava/util/ArrayList;

    .line 738
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    if-eqz v0, :cond_4

    .line 739
    iget-object v0, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    invoke-virtual {v0}, Lcom/lge/camera/dialog/HelpActivityDialog;->unbind()V

    .line 740
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mDialog:Lcom/lge/camera/dialog/HelpActivityDialog;

    .line 742
    :cond_4
    iput-object v1, p0, Lcom/lge/camera/adapter/HelpItemAdapter;->mContext:Ljava/lang/ref/WeakReference;

    .line 743
    return-void
.end method
