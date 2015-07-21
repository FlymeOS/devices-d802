.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mLayoutModified:Z

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 368
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 336
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 343
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 352
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 353
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 361
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Toast$TN;->mLayoutModified:Z

    .line 371
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 372
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 373
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 374
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 375
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 376
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 377
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 378
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 381
    return-void
.end method

.method private modifyPositionWhenSplit(Landroid/content/Context;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 483
    if-eqz p1, :cond_0

    instance-of v10, p1, Landroid/app/Activity;

    if-eqz v10, :cond_0

    move-object v10, p1

    .line 484
    check-cast v10, Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, "decor":Landroid/view/View;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 486
    .local v7, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0, v7}, Landroid/view/View;->isWindowSplit(Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget v10, v7, Landroid/graphics/Rect;->top:I

    if-eqz v10, :cond_0

    .line 487
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v4, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 488
    .local v4, "displayWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v3, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 489
    .local v3, "displayHeight":I
    iget v10, v7, Landroid/graphics/Rect;->top:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    iget v12, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    .line 491
    .local v6, "mid":I
    const v8, 0x426aae14    # 58.67f

    .line 492
    .local v8, "underMargin":F
    const/high16 v1, 0x424c0000    # 51.0f

    .line 493
    .local v1, "defaultHeight":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v10, v10

    const/high16 v11, 0x43200000    # 160.0f

    div-float v2, v10, v11

    .line 494
    .local v2, "densityRatio":F
    iget-object v10, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    if-nez v10, :cond_1

    const/high16 v10, 0x424c0000    # 51.0f

    mul-float/2addr v10, v2

    float-to-int v5, v10

    .line 495
    .local v5, "heightOfView":I
    :goto_0
    const v10, 0x426aae14    # 58.67f

    mul-float/2addr v10, v2

    float-to-int v9, v10

    .line 497
    .local v9, "underMarginPixel":I
    if-ge v4, v3, :cond_0

    .line 498
    iget-object v10, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v11, 0x31

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 500
    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v10, v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v11

    if-le v10, v11, :cond_2

    .line 502
    iget-object v10, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v11, v6, v5

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 509
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "defaultHeight":F
    .end local v2    # "densityRatio":F
    .end local v3    # "displayHeight":I
    .end local v4    # "displayWidth":I
    .end local v5    # "heightOfView":I
    .end local v6    # "mid":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v8    # "underMargin":F
    .end local v9    # "underMarginPixel":I
    :cond_0
    :goto_1
    return-void

    .line 494
    .restart local v0    # "decor":Landroid/view/View;
    .restart local v1    # "defaultHeight":F
    .restart local v2    # "densityRatio":F
    .restart local v3    # "displayHeight":I
    .restart local v4    # "displayWidth":I
    .restart local v6    # "mid":I
    .restart local v7    # "rect":Landroid/graphics/Rect;
    .restart local v8    # "underMargin":F
    :cond_1
    iget-object v10, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v5

    goto :goto_0

    .line 504
    .restart local v5    # "heightOfView":I
    .restart local v9    # "underMarginPixel":I
    :cond_2
    iget-object v10, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v11, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v11, v12

    add-int v12, v9, v5

    sub-int/2addr v11, v12

    iput v11, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_1
.end method

.method private trySendAccessibilityEvent()V
    .locals 6

    .prologue
    .line 447
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 449
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    :goto_0
    return-void

    .line 454
    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 456
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 460
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v3, "Toast"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[trySendAccessibilityEvent] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 477
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 479
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 404
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v5, v6, :cond_5

    .line 406
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 407
    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 408
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 409
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 411
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 413
    :cond_0
    const-string/jumbo v5, "window"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 416
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 417
    .local v0, "config":Landroid/content/res/Configuration;
    iget v5, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    invoke-static {v5, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    .line 418
    .local v3, "gravity":I
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 419
    and-int/lit8 v5, v3, 0x7

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    .line 420
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 422
    :cond_1
    and-int/lit8 v5, v3, 0x70

    const/16 v6, 0x70

    if-ne v5, v6, :cond_2

    .line 423
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v7, v5, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 425
    :cond_2
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mX:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 426
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mY:I

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 427
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 428
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 429
    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v4, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 430
    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 432
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v5, v6}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 436
    :cond_3
    sget-boolean v5, Lcom/lge/config/ConfigBuildFlags;->CAPP_SPLITWINDOW:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Landroid/widget/Toast$TN;->mLayoutModified:Z

    if-nez v5, :cond_4

    .line 437
    # getter for: Landroid/widget/Toast;->mToastCallerMap:Ljava/util/WeakHashMap;
    invoke-static {}, Landroid/widget/Toast;->access$000()Ljava/util/WeakHashMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v2, 0x0

    .line 438
    .local v2, "ctx":Landroid/content/Context;
    :goto_0
    invoke-direct {p0, v2}, Landroid/widget/Toast$TN;->modifyPositionWhenSplit(Landroid/content/Context;)V

    .line 441
    .end local v2    # "ctx":Landroid/content/Context;
    :cond_4
    iget-object v5, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v5, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 442
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 444
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v3    # "gravity":I
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_5
    return-void

    .line 437
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v3    # "gravity":I
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_6
    # getter for: Landroid/widget/Toast;->mToastCallerMap:Ljava/util/WeakHashMap;
    invoke-static {}, Landroid/widget/Toast;->access$000()Ljava/util/WeakHashMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    move-object v2, v5

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    return-void
.end method
