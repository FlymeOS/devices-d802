.class Lcom/lge/camera/CameraMediator$2;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->setRefocusShotPreviewGuideVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraMediator;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraMediator;Z)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    iput-boolean p2, p0, Lcom/lge/camera/CameraMediator$2;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7f09001a

    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 643
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 645
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    const v4, 0x7f0d01be

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 647
    .local v2, "mGuideViewLayout":Landroid/view/View;
    if-nez v2, :cond_0

    .line 697
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    const v4, 0x7f0d01c1

    invoke-virtual {v3, v4}, Lcom/lge/camera/CameraMediator;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 652
    .local v1, "mGuideTextView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 654
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v0}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 655
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902c2

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 657
    iget-boolean v3, p0, Lcom/lge/camera/CameraMediator$2;->val$show:Z

    if-eqz v3, :cond_4

    .line 658
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v4

    invoke-static {v3, v4, v7}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 659
    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 660
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902c3

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 686
    :goto_1
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 688
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 689
    const v3, 0x7f0d01bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 692
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 662
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v4

    const/16 v5, 0x5a

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 663
    invoke-virtual {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 664
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0902c7

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 671
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getOrientationDegree()I

    move-result v4

    const/16 v5, 0xb4

    invoke-static {v3, v4, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 672
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 673
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902c3

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 676
    :cond_3
    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 677
    iget-object v3, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v3}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09001d

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/lge/camera/CameraMediator$2;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v4}, Lcom/lge/camera/CameraMediator;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0902c7

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    .line 695
    :cond_4
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method
