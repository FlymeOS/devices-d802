.class Lcom/lge/camera/controller/PreviewPanelController$8;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0

    .prologue
    .line 2292
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionevent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 2295
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_0
    move v5, v8

    .line 2410
    :cond_0
    :goto_1
    return v5

    .line 2297
    :pswitch_0
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$800(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageView;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_1
    move v5, v7

    .line 2300
    goto :goto_1

    .line 2303
    :cond_2
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-boolean v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-eqz v9, :cond_4

    .line 2304
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 2305
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v8}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move v5, v7

    .line 2307
    goto :goto_1

    .line 2310
    :cond_4
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 2311
    .local v6, "startPos":[I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v9, v6}, Lcom/lge/camera/components/RotateImageView;->getLocationOnScreen([I)V

    .line 2312
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0902ce

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 2314
    .local v1, "buttonWidth":I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0902cf

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 2316
    .local v0, "buttonHeight":I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090008

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 2318
    .local v4, "lcdWidth":I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090009

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 2321
    .local v3, "lcdHeight":I
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    aget v10, v6, v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    div-int/lit8 v11, v1, 0x2

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2322
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    aget v10, v6, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    add-int/2addr v10, v11

    div-int/lit8 v11, v0, 0x2

    sub-int/2addr v10, v11

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2324
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-gez v9, :cond_5

    .line 2325
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iput v8, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2327
    :cond_5
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2328
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v10, v4, v1

    if-le v9, v10, :cond_6

    .line 2329
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v4, v1

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 2336
    :cond_6
    :goto_2
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    if-gez v9, :cond_7

    .line 2337
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iput v8, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2339
    :cond_7
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2340
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v10, v3, v0

    if-le v9, v10, :cond_8

    .line 2341
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v3, v0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2348
    :cond_8
    :goto_3
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v10}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2350
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_9

    .line 2351
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2354
    :cond_9
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    # invokes: Lcom/lge/camera/controller/PreviewPanelController;->checkTrashLocation(FF)Z
    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/PreviewPanelController;->access$1000(Lcom/lge/camera/controller/PreviewPanelController;FF)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2355
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/components/RotateImageButton;->isPressed()Z

    move-result v9

    if-nez v9, :cond_a

    .line 2356
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v9

    const v10, 0x8000

    invoke-virtual {v9, v10}, Lcom/lge/camera/components/RotateImageButton;->sendAccessibilityEvent(I)V

    .line 2360
    :cond_a
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2361
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    const v9, 0x7f0200ea

    invoke-virtual {v7, v9}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2362
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;

    move-result-object v7

    const v9, 0x7f0200e8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 2332
    :cond_b
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int v10, v3, v1

    if-le v9, v10, :cond_6

    .line 2333
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v3, v1

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_2

    .line 2344
    :cond_c
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int v10, v4, v0

    if-le v9, v10, :cond_8

    .line 2345
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v9

    sub-int v10, v4, v0

    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 2365
    :cond_d
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2366
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    const v9, 0x7f0200e9

    invoke-virtual {v7, v9}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2367
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;

    move-result-object v7

    const v9, 0x7f0200e7

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2368
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;

    move-result-object v7

    const/high16 v9, 0x10000

    invoke-virtual {v7, v9}, Lcom/lge/camera/components/RotateImageButton;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 2375
    .end local v0    # "buttonHeight":I
    .end local v1    # "buttonWidth":I
    .end local v3    # "lcdHeight":I
    .end local v4    # "lcdWidth":I
    .end local v6    # "startPos":[I
    :pswitch_1
    const-string v9, "CameraApp"

    const-string v10, "Gallery key touch up"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 2378
    const/4 v5, 0x0

    .line 2379
    .local v5, "result":Z
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d009e

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2380
    .local v2, "galleryWindowViewImage":Landroid/view/View;
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-boolean v9, v9, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-nez v9, :cond_f

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_f

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v9

    if-eqz v9, :cond_f

    .line 2385
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    # invokes: Lcom/lge/camera/controller/PreviewPanelController;->checkTrashLocation(FF)Z
    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/PreviewPanelController;->access$1000(Lcom/lge/camera/controller/PreviewPanelController;FF)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 2387
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_e

    .line 2388
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->showDialogPopup(I)V

    move v5, v7

    .line 2389
    goto/16 :goto_1

    .line 2391
    :cond_e
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v9, v8, v7}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    .line 2396
    :goto_4
    const/4 v5, 0x1

    .line 2398
    :cond_f
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v8}, Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailTouchActionUp()V

    .line 2399
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_front_beauty"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_camera_shot_mode"

    const-string v10, "shotmode_main_beauty"

    invoke-interface {v8, v9, v10}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2405
    :cond_10
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v8, v8, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8, v7}, Lcom/lge/camera/ControllerFunction;->showBeautyShotBarForNewUx(Z)V

    goto/16 :goto_1

    .line 2394
    :cond_11
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$8;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v9, v8, v8}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    goto :goto_4

    .line 2295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
