.class Lcom/lge/camera/PostviewClearShotActivity$2;
.super Ljava/lang/Object;
.source "PostviewClearShotActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewClearShotActivity;->makeObjectInfoView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewClearShotActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/lge/camera/PostviewClearShotActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 501
    const-string v2, "CameraApp"

    const-string v3, "makeObjectInfoView-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v12, 0x1

    .line 503
    .local v12, "isEmptyObject":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$400(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 504
    const/4 v13, 0x0

    .local v13, "left":I
    const/16 v17, 0x0

    .local v17, "top":I
    const/4 v15, 0x0

    .local v15, "right":I
    const/4 v8, 0x0

    .line 506
    .local v8, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    array-length v11, v2

    .line 507
    .local v11, "infoSize":I
    if-lez v11, :cond_0

    .line 508
    const/4 v12, 0x0

    .line 510
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v11, :cond_3

    .line 511
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$400(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    .line 510
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 515
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v13, v2, Landroid/graphics/Rect;->left:I

    .line 516
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v0, v2, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v15, v2, Landroid/graphics/Rect;->right:I

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->getRect()Landroid/graphics/Rect;

    move-result-object v2

    iget v8, v2, Landroid/graphics/Rect;->bottom:I

    .line 520
    new-instance v7, Landroid/graphics/Rect;

    move/from16 v0, v17

    invoke-direct {v7, v13, v0, v15, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 522
    .local v7, "newRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const v3, 0x7f0d0154

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 523
    .local v14, "objectLayout":Landroid/view/ViewGroup;
    if-eqz v14, :cond_1

    .line 525
    new-instance v1, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewClearShotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    invoke-static {v5}, Lcom/lge/camera/PostviewClearShotActivity;->access$400(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    move-result-object v5

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v6}, Lcom/lge/camera/PostviewClearShotActivity;->access$300(Lcom/lge/camera/PostviewClearShotActivity;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    move-result-object v6

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct/range {v1 .. v7}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;-><init>(Lcom/lge/camera/PostviewClearShotActivity;Landroid/content/Context;ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 530
    .local v1, "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # invokes: Lcom/lge/camera/PostviewClearShotActivity;->addObjectInfoList(Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;)V
    invoke-static {v2, v1}, Lcom/lge/camera/PostviewClearShotActivity;->access$500(Lcom/lge/camera/PostviewClearShotActivity;Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;)V

    .line 532
    invoke-virtual {v1}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 534
    .local v16, "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # invokes: Lcom/lge/camera/PostviewClearShotActivity;->calcObjectRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v2, v7}, Lcom/lge/camera/PostviewClearShotActivity;->access$600(Lcom/lge/camera/PostviewClearShotActivity;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 536
    .local v9, "dstRect":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    move-object/from16 v0, v16

    # invokes: Lcom/lge/camera/PostviewClearShotActivity;->expandObjectRect(Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)I
    invoke-static {v2, v0, v9}, Lcom/lge/camera/PostviewClearShotActivity;->access$700(Lcom/lge/camera/PostviewClearShotActivity;Landroid/widget/RelativeLayout$LayoutParams;Landroid/graphics/Rect;)I

    move-result v2

    invoke-virtual {v1, v9, v2}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setRect(Landroid/graphics/Rect;I)V

    .line 539
    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 540
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 546
    .end local v1    # "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    .end local v4    # "i":I
    .end local v7    # "newRect":Landroid/graphics/Rect;
    .end local v8    # "bottom":I
    .end local v9    # "dstRect":Landroid/graphics/Rect;
    .end local v11    # "infoSize":I
    .end local v13    # "left":I
    .end local v14    # "objectLayout":Landroid/view/ViewGroup;
    .end local v15    # "right":I
    .end local v16    # "rlp":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v17    # "top":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewClearShotActivity;->reloadedPostview()V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const v3, 0x7f0d0155

    invoke-virtual {v2, v3}, Lcom/lge/camera/PostviewClearShotActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 549
    .local v10, "guideTextView":Landroid/widget/TextView;
    if-eqz v10, :cond_4

    .line 550
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    if-eqz v12, :cond_5

    .line 552
    const v2, 0x7f0a02fa

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    .line 559
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewClearShotActivity;->dismissProgressDialog()V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const/4 v3, 0x0

    # setter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;
    invoke-static {v2, v3}, Lcom/lge/camera/PostviewClearShotActivity;->access$302(Lcom/lge/camera/PostviewClearShotActivity;[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjectInfo;

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const/4 v3, 0x0

    # setter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjBoundaryInfo:[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;
    invoke-static {v2, v3}, Lcom/lge/camera/PostviewClearShotActivity;->access$402(Lcom/lge/camera/PostviewClearShotActivity;[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;)[Lcom/lge/almalence/app/clearshot/AlmaCLRShot$ObjBorderInfo;

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewClearShotActivity$2;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const/4 v3, 0x1

    # setter for: Lcom/lge/camera/PostviewClearShotActivity;->mLoadCompleted:Z
    invoke-static {v2, v3}, Lcom/lge/camera/PostviewClearShotActivity;->access$102(Lcom/lge/camera/PostviewClearShotActivity;Z)Z

    .line 563
    return-void

    .line 555
    :cond_5
    const v2, 0x7f0a02f9

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method
