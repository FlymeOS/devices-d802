.class Lcom/lge/camera/controller/camera/PanoramaController$2;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/PanoramaController;->showGuideAroundThumbText(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;

.field final synthetic val$isShowing:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;Z)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camera/PanoramaController$2;->val$isShowing:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-interface {v3, v0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    const v4, 0x7f0d0114

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/RelativeLayout;

    .line 419
    .local v20, "guideLayout":Landroid/widget/RelativeLayout;
    if-eqz v20, :cond_0

    .line 420
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->val$isShowing:Z

    if-nez v3, :cond_1

    .line 421
    const/4 v3, 0x4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mPanoOrientationDegree:I
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$500(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v15

    .line 426
    .local v15, "degree":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    add-int/lit16 v3, v15, 0x10e

    rem-int/lit16 v15, v3, 0x168

    .line 430
    :cond_2
    const v3, 0x7f0d0115

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/lge/camera/components/RotateLayout;

    .line 432
    .local v19, "guide":Lcom/lge/camera/components/RotateLayout;
    if-eqz v19, :cond_3

    .line 433
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 436
    :cond_3
    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    .local v17, "lpGuideLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v17 .. v17}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 439
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 440
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 441
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 442
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 443
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 445
    const v3, 0x7f0d0116

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    .line 447
    .local v16, "textLayout":Landroid/widget/RelativeLayout;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout$LayoutParams;

    .line 449
    .local v18, "lpTextLayout":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static/range {v18 .. v18}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 450
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setLayoutDirection(I)V

    .line 451
    const/4 v3, -0x2

    move-object/from16 v0, v18

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 453
    new-instance v2, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v4}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1300(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v4

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0902aa

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v5}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1400(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v5

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0902ab

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;
    invoke-static {v6}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/olaworks/library/AutoPanorama;->getThumbnailInfo()Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    move-result-object v6

    iget v6, v6, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->width:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mAutoPanoramaEngine:Lcom/lge/olaworks/library/AutoPanorama;
    invoke-static {v7}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1500(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/olaworks/library/AutoPanorama;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/olaworks/library/AutoPanorama;->getThumbnailInfo()Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;

    move-result-object v7

    iget v7, v7, Lcom/lge/olaworks/datastruct/Ola_AutoPanoramaThumbInfo;->height:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v8}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1600(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v8

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09008d

    invoke-static {v8, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v9}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1700(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v9

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09008f

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v10}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1800(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v10

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090197

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v11}, Lcom/lge/camera/controller/camera/PanoramaController;->access$1900(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v11

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f09001a

    invoke-static {v11, v12}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v12}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2000(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v12

    invoke-interface {v12}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f09001d

    invoke-static {v12, v13}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v13}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2100(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v13

    invoke-interface {v13}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f090008

    invoke-static {v13, v14}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v14}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2200(Lcom/lge/camera/controller/camera/PanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v14

    invoke-interface {v14}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const v21, 0x7f090009

    move/from16 v0, v21

    invoke-static {v14, v0}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v14

    invoke-direct/range {v2 .. v18}, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;-><init>(Lcom/lge/camera/controller/camera/PanoramaController;IIIIIIIIIIIILandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 476
    .local v2, "gp":Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/PanoramaController;->mDirection:I
    invoke-static {v3}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2300(Lcom/lge/camera/controller/camera/PanoramaController;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 478
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/PanoramaController;->setGuideAroundThumbTextLayoutRightLeft(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    invoke-static {v3, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2400(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V

    .line 483
    :goto_1
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 484
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 485
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 480
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/camera/PanoramaController$2;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/PanoramaController;->setGuideAroundThumbTextLayoutUpDown(Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V
    invoke-static {v3, v2}, Lcom/lge/camera/controller/camera/PanoramaController;->access$2500(Lcom/lge/camera/controller/camera/PanoramaController;Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;)V

    goto :goto_1
.end method
