.class Lcom/lge/camera/components/BarView$4;
.super Ljava/lang/Object;
.source "BarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/BarView;->setCursor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BarView;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BarView;I)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iput p2, p0, Lcom/lge/camera/components/BarView$4;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 389
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v6, v6, Lcom/lge/camera/components/BarView;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v6, p0}, Lcom/lge/camera/components/BarAction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 391
    const/4 v5, 0x0

    .line 392
    .local v5, "position":I
    const/4 v0, 0x0

    .line 393
    .local v0, "curLevel":I
    const/4 v3, 0x0

    .line 394
    .local v3, "marginDown":I
    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->cursorResId:I

    invoke-virtual {v6, v7}, Lcom/lge/camera/components/BarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 395
    .local v1, "cursor":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 397
    .local v4, "param":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->mBarType:I

    packed-switch v6, :pswitch_data_0

    .line 436
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    .end local v1    # "cursor":Landroid/widget/ImageView;
    .end local v4    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    return-void

    .line 399
    .restart local v1    # "cursor":Landroid/widget/ImageView;
    .restart local v4    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_0
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    iget v7, p0, Lcom/lge/camera/components/BarView$4;->val$value:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v8, v8, Lcom/lge/camera/components/BarView;->CURSOR_POS_WIDTH:I

    int-to-float v8, v8

    iget-object v9, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v9}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-int v7, v7

    add-int v5, v6, v7

    .line 401
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    if-le v5, v6, :cond_0

    .line 402
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    .line 404
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    if-ge v5, v6, :cond_1

    .line 405
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v6, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    .line 407
    :cond_1
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    .end local v1    # "cursor":Landroid/widget/ImageView;
    .end local v4    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v2

    .line 438
    .local v2, "e":Ljava/lang/ArithmeticException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCursorMaxStep() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v8}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v6, "CameraApp"

    const-string v7, "ArithmeticException:"

    invoke-static {v6, v7, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 419
    .end local v2    # "e":Ljava/lang/ArithmeticException;
    .restart local v1    # "cursor":Landroid/widget/ImageView;
    .restart local v4    # "param":Landroid/widget/RelativeLayout$LayoutParams;
    :pswitch_1
    :try_start_1
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v6}, Lcom/lge/camera/components/BarView;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 420
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 421
    iget v6, p0, Lcom/lge/camera/components/BarView$4;->val$value:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->CURSOR_POS_HEIGHT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v8}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 426
    :goto_2
    sub-int v5, v3, v0

    .line 427
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v6}, Lcom/lge/camera/components/BarView;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    :goto_3
    if-le v5, v6, :cond_2

    .line 428
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v6}, Lcom/lge/camera/components/BarView;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS:I

    .line 430
    :cond_2
    :goto_4
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    if-ge v5, v6, :cond_3

    .line 431
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v6, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    .line 433
    :cond_3
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 423
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->MIN_CURSOR_POS:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->CURSOR_HEIGHT_PORT:F

    sub-float/2addr v6, v7

    float-to-int v3, v6

    .line 424
    iget v6, p0, Lcom/lge/camera/components/BarView$4;->val$value:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v7, v7, Lcom/lge/camera/components/BarView;->CURSOR_POS_HEIGHT_PORT:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    invoke-virtual {v8}, Lcom/lge/camera/components/BarView;->getCursorMaxStep()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_2

    .line 427
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v6, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I

    goto :goto_3

    .line 428
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/components/BarView$4;->this$0:Lcom/lge/camera/components/BarView;

    iget v5, v6, Lcom/lge/camera/components/BarView;->MAX_CURSOR_POS_PORT:I
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 397
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
