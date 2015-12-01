.class Lcom/lge/camera/components/BarView$5;
.super Ljava/lang/Object;
.source "BarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/BarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BarView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BarView;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getValueForLineTouchListener(FF)I
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 499
    const/4 v3, 0x0

    .line 500
    .local v3, "value":I
    const/4 v2, 0x0

    .line 501
    .local v2, "marginDown":I
    const/4 v0, 0x0

    .line 503
    .local v0, "curLineLevel":F
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v4, v4, Lcom/lge/camera/components/BarView;->mBarType:I

    packed-switch v4, :pswitch_data_0

    .line 531
    :goto_0
    return v3

    .line 505
    :pswitch_0
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v4, v4, Lcom/lge/camera/components/BarView;->CURSOR_WIDTH:F

    div-float/2addr v4, v6

    sub-float v4, p1, v4

    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v5, Lcom/lge/camera/components/BarView;->CURSOR_POS_WIDTH:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v6}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    float-to-int v3, v4

    .line 506
    goto :goto_0

    .line 517
    :pswitch_1
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v4}, Lcom/lge/camera/components/BarView;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 518
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v4, v4, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v5, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 519
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v4, v4, Lcom/lge/camera/components/BarView;->CURSOR_POS_HEIGHT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v5}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 524
    :goto_1
    int-to-float v4, v2

    sub-float/2addr v4, p2

    div-float/2addr v4, v0

    float-to-int v3, v4

    goto :goto_0

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v4, v4, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v5, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT_PORT:F

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 522
    iget-object v4, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v4, v4, Lcom/lge/camera/components/BarView;->CURSOR_POS_HEIGHT_PORT:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v5}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    goto :goto_1

    .line 527
    :catch_0
    move-exception v1

    .line 528
    .local v1, "e":Ljava/lang/ArithmeticException;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCursorMaxStep() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v6}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v4, "CameraApp"

    const-string v5, "ArithmeticException:"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 460
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-boolean v5, v5, Lcom/lge/camera/components/BarView;->mInitial:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v5}, Lcom/lge/camera/components/BarView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v3

    .line 464
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v5, v5, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v5}, Lcom/lge/camera/components/BarAction;->isSettingViewRemoving()Z

    move-result v5

    if-nez v5, :cond_0

    .line 468
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 469
    .local v1, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 470
    .local v2, "y":F
    const/4 v0, 0x0

    .line 472
    .local v0, "value":I
    invoke-direct {p0, v1, v2}, Lcom/lge/camera/components/BarView$5;->getValueForLineTouchListener(FF)I

    move-result v0

    .line 474
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 494
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v3}, Lcom/lge/camera/components/BarView;->resetDisplayTimeout()V

    move v3, v4

    .line 495
    goto :goto_0

    .line 476
    :pswitch_0
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v5, p1}, Lcom/lge/camera/components/BarView;->disallowTouchInParentView(Landroid/view/View;)V

    .line 477
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 479
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 480
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v5, v0, v3}, Lcom/lge/camera/components/BarView;->updateBarWithValue(IZ)V

    goto :goto_1

    .line 483
    :pswitch_1
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 485
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setPressed(Z)V

    .line 486
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v5, v0, v3}, Lcom/lge/camera/components/BarView;->updateBarWithValue(IZ)V

    goto :goto_1

    .line 490
    :pswitch_2
    iget-object v5, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v6, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setPressed(Z)V

    .line 491
    iget-object v3, p0, Lcom/lge/camera/components/BarView$5;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v3, v0, v4}, Lcom/lge/camera/components/BarView;->updateBarWithValue(IZ)V

    goto :goto_1

    .line 474
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
