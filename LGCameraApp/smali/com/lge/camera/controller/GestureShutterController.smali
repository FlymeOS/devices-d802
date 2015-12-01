.class public Lcom/lge/camera/controller/GestureShutterController;
.super Lcom/lge/camera/controller/Controller;
.source "GestureShutterController.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/GestureShutterController$1;,
        Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;,
        Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;,
        Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;
    }
.end annotation


# static fields
.field public static final GESTURETYPE_FIST:I = 0x1

.field public static final GESTURETYPE_HAND:I


# instance fields
.field private mDegree:I

.field private mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;

.field private mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

.field private mGestureGuideView:Landroid/view/View;

.field private mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

.field private mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

.field private mGuideImage:Landroid/widget/ImageView;

.field private mGuideString:Landroid/widget/TextView;

.field private mGuideStringLayout:Landroid/view/View;

.field private mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

.field private mPreviewBuff:[B

.field private mTranHeight:I

.field private mTranMinX:I

.field private mTranMinY:I

.field private mTranWidth:I

.field private mUseCallback:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 30
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .line 31
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    .line 32
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    .line 33
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    .line 34
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    .line 35
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    .line 36
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    .line 37
    new-instance v0, Lcom/lge/gestureshot/library/HandInfo;

    invoke-direct {v0}, Lcom/lge/gestureshot/library/HandInfo;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    .line 38
    iput v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    .line 39
    iput v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    .line 40
    iput v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    .line 41
    iput v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    .line 42
    iput v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    .line 43
    iput-boolean v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mUseCallback:Z

    .line 48
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    .line 54
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    .line 64
    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/gestureshot/library/HandInfo;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/GestureShutterController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/components/GestureGuideBox;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/GestureShutterController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/GestureShutterController;)Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/GestureShutterController;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureUIListener:Lcom/lge/camera/controller/GestureShutterController$onGestureUIListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/GestureShutterController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/GestureShutterController;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lge/camera/controller/GestureShutterController;->executeTimershot()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/GestureShutterController;Lcom/lge/gestureshot/library/HandInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/GestureShutterController;
    .param p1, "x1"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/GestureShutterController;->drawHandGuideRect(Lcom/lge/gestureshot/library/HandInfo;)V

    return-void
.end method

.method private calculateCoordinatesforHalfPreview()V
    .locals 11

    .prologue
    .line 310
    iget-object v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 311
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_0

    .line 340
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 315
    .local v3, "previewSize":Landroid/hardware/Camera$Size;
    iget-object v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09001d

    invoke-static {v9, v10}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 321
    .local v1, "naviHeight":I
    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    div-int/lit8 v5, v9, 0x4

    .line 322
    .local v5, "transValue_W":I
    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    div-int/lit8 v4, v9, 0x4

    .line 324
    .local v4, "transValue_H":I
    iget-object v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 325
    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v9, v1

    div-int/lit8 v5, v9, 0x4

    .line 330
    :goto_1
    iget v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    div-int/lit8 v7, v9, 0x2

    .line 331
    .local v7, "x":I
    iget v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    div-int/lit8 v8, v9, 0x2

    .line 332
    .local v8, "y":I
    iget v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    div-int/lit8 v6, v9, 0x2

    .line 333
    .local v6, "w":I
    iget v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    div-int/lit8 v0, v9, 0x2

    .line 335
    .local v0, "h":I
    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    .line 336
    iput v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    .line 337
    add-int v9, v7, v5

    iput v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    .line 338
    add-int v9, v8, v4

    iput v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    goto :goto_0

    .line 327
    .end local v0    # "h":I
    .end local v6    # "w":I
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_1
    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v9, v1

    div-int/lit8 v4, v9, 0x4

    goto :goto_1
.end method

.method private convertCoordinate(Lcom/lge/gestureshot/library/HandInfo;)V
    .locals 8
    .param p1, "handInfo"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 256
    const/4 v4, 0x0

    .line 257
    .local v4, "previewWidth":I
    const/4 v2, 0x0

    .line 258
    .local v2, "previewHeight":I
    invoke-direct {p0}, Lcom/lge/camera/controller/GestureShutterController;->getOrientation()I

    move-result v5

    .line 260
    .local v5, "tmpOrientation":I
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    .line 261
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    .line 262
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    .line 263
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    .line 264
    iget-object v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 265
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v1, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 269
    .local v3, "previewSize":Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_3

    .line 270
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 271
    :cond_2
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    .line 272
    iget v2, v3, Landroid/hardware/Camera$Size;->height:I

    .line 279
    :cond_3
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 303
    :goto_2
    :pswitch_0
    iget-object v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_light"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "lightMode":Ljava/lang/String;
    const-string v6, "on"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/lge/camera/controller/GestureShutterController;->calculateCoordinatesforHalfPreview()V

    goto :goto_0

    .line 274
    .end local v0    # "lightMode":Ljava/lang/String;
    :cond_4
    iget v2, v3, Landroid/hardware/Camera$Size;->width:I

    .line 275
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    goto :goto_1

    .line 283
    :pswitch_1
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    iget v7, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    add-int/2addr v6, v7

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    .line 284
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    .line 285
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    .line 286
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    goto :goto_2

    .line 289
    :pswitch_2
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    iget v7, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    add-int/2addr v6, v7

    sub-int v6, v4, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    .line 290
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    iget v7, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    add-int/2addr v6, v7

    sub-int v6, v2, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    .line 291
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    .line 292
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    goto :goto_2

    .line 295
    :pswitch_3
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinY:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    .line 296
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mMinX:I

    iget v7, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    add-int/2addr v6, v7

    sub-int v6, v4, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    .line 297
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mHeight:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    .line 298
    iget v6, p1, Lcom/lge/gestureshot/library/HandInfo;->mWidth:I

    iput v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    goto :goto_2

    .line 279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private drawHandGuideRect(Lcom/lge/gestureshot/library/HandInfo;)V
    .locals 10
    .param p1, "handInfo"    # Lcom/lge/gestureshot/library/HandInfo;

    .prologue
    .line 343
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0900a4

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    .line 345
    .local v4, "quickBtnW":I
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09001d

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 347
    .local v0, "naviHeight":I
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09001a

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 349
    .local v1, "pannelW":I
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v5, :cond_0

    .line 350
    if-eqz p1, :cond_0

    .line 351
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/GestureShutterController;->convertCoordinate(Lcom/lge/gestureshot/library/HandInfo;)V

    .line 352
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 353
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 367
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 357
    .local v3, "previewSize":Landroid/hardware/Camera$Size;
    if-eqz v3, :cond_0

    .line 360
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    invoke-virtual {v5, v4, v1, v0}, Lcom/lge/camera/components/GestureGuideBox;->setCoorinate(III)V

    .line 361
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    iget-object v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/lge/camera/components/GestureGuideBox;->setPreviewSize(Landroid/content/Context;II)V

    .line 363
    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    iget v6, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinX:I

    iget v7, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranMinY:I

    iget v8, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranWidth:I

    iget v9, p0, Lcom/lge/camera/controller/GestureShutterController;->mTranHeight:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/lge/camera/components/GestureGuideBox;->setRectangleArea(IIII)V

    goto :goto_0
.end method

.method private executeTimershot()V
    .locals 2

    .prologue
    .line 370
    const-string v0, "CameraApp"

    const-string v1, "executeTimershot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/GestureGuideBox;->setVisibility(I)V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    if-eqz v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    invoke-interface {v0}, Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;->doTimershotByGestureRecog()V

    .line 377
    :cond_1
    return-void
.end method

.method private getOrientation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    .line 484
    .local v0, "degree":I
    sparse-switch v0, :sswitch_data_0

    .line 494
    :goto_0
    :sswitch_0
    return v1

    .line 488
    :sswitch_1
    const/4 v1, 0x3

    goto :goto_0

    .line 490
    :sswitch_2
    const/4 v1, 0x2

    goto :goto_0

    .line 492
    :sswitch_3
    const/4 v1, 0x1

    goto :goto_0

    .line 484
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public hideGestureGuide()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 244
    const-string v0, "CameraApp"

    const-string v1, "hideGestureGuide"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/GestureGuideBox;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->initLayout()V

    .line 73
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->initController()V

    .line 74
    return-void
.end method

.method public initGestureEngine()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/lge/gestureshot/library/GestureEngineProcessor;

    new-instance v1, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/controller/GestureShutterController$GestureRegEngineCallback;-><init>(Lcom/lge/camera/controller/GestureShutterController;Lcom/lge/camera/controller/GestureShutterController$1;)V

    invoke-direct {v0, v1}, Lcom/lge/gestureshot/library/GestureEngineProcessor;-><init>(Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;)V

    iput-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->create()I

    .line 210
    const-string v0, "CameraApp"

    const-string v1, "initGestureEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public initLayout()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 82
    const-string v1, "CameraApp"

    const-string v2, "initLayout"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "vg":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c7

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    iput v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    .line 86
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d008b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/GestureGuideBox;

    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    .line 87
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f030012

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    const v2, 0x7f0d00a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    const v2, 0x7f0d00a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    .line 90
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    const v2, 0x7f0d00a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    .line 91
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    const v2, 0x7f0a03b7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/GestureGuideBox;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    invoke-virtual {v1}, Lcom/lge/camera/components/GestureGuideBox;->init()V

    .line 102
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    iget v2, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/GestureGuideBox;->setInitialDegree(I)V

    .line 104
    :cond_1
    iget v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/GestureShutterController;->setRotateDegree(IZ)V

    .line 106
    return-void
.end method

.method public isAvailableGestureShutterStarted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 380
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportedGestureShot()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordmode_dual"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 200
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->releaseLayout()V

    .line 201
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 202
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/GestureShutterController;->getOrientation()I

    move-result v2

    .line 455
    .local v2, "nOrientation":I
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 456
    .local v6, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v6, :cond_0

    .line 459
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v7

    .line 460
    .local v7, "previewSize":Landroid/hardware/Camera$Size;
    iget v0, v7, Landroid/hardware/Camera$Size;->width:I

    if-eqz v0, :cond_0

    iget v0, v7, Landroid/hardware/Camera$Size;->height:I

    if-eqz v0, :cond_0

    .line 463
    iget-boolean v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mUseCallback:Z

    if-eqz v0, :cond_2

    .line 464
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 469
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->getGestureEngineState()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    iget v3, v7, Landroid/hardware/Camera$Size;->width:I

    iget v4, v7, Landroid/hardware/Camera$Size;->height:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->putPreviewFrame([BIIII)V

    goto :goto_0

    .line 466
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->initLayout()V

    .line 194
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 195
    return-void
.end method

.method public reInitialize()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->reInitialize()V

    .line 79
    return-void
.end method

.method public releaseGestureEngine()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 177
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->release()I

    .line 179
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    .line 181
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mUseCallback:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 183
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 185
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mUseCallback:Z

    .line 187
    const-string v0, "CameraApp"

    const-string v1, "releaseGestureEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_1
    return-void
.end method

.method public releaseLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    const-string v1, "CameraApp"

    const-string v2, "releaseLayout"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d00c5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 111
    .local v0, "vg":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 113
    iput-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    invoke-virtual {v1}, Lcom/lge/camera/components/GestureGuideBox;->unbind()V

    .line 117
    iput-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    .line 120
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    .line 121
    iput-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    .line 122
    iput-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    .line 123
    return-void
.end method

.method public runGestureEngine(Z)V
    .locals 8
    .param p1, "useCallback"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/lge/camera/controller/GestureShutterController;->mUseCallback:Z

    .line 127
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->isAvailableGestureShutterStarted()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 128
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-nez v4, :cond_0

    .line 157
    :goto_0
    return-void

    .line 131
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    if-nez v4, :cond_3

    .line 132
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 133
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 134
    const-string v4, "CameraApp"

    const-string v5, "parameter is null. can not run GestureEngine!! "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 138
    .local v3, "previewSize":Landroid/hardware/Camera$Size;
    if-nez v3, :cond_2

    .line 139
    const-string v4, "CameraApp"

    const-string v5, "previewSize is null. can not run GestureEngine!! "

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 143
    .local v0, "buffScale":D
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    .line 145
    .end local v0    # "buffScale":D
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v3    # "previewSize":Landroid/hardware/Camera$Size;
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    .line 146
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    if-eqz v4, :cond_4

    .line 147
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/GestureShutterController;->mPreviewBuff:[B

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 149
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->initGestureEngine()V

    .line 152
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->startGestureEngine()V

    goto :goto_0

    .line 154
    :cond_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->stopGestureEngine()V

    .line 155
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->releaseGestureEngine()V

    goto :goto_0
.end method

.method public setGestureRecogEngineListener(Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureRecogListener:Lcom/lge/camera/controller/GestureShutterController$OnGestureRecogListener;

    .line 68
    return-void
.end method

.method public setRotateDegree(IZ)V
    .locals 10
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xa

    const/4 v7, 0x0

    const/16 v6, 0xe

    const/4 v5, 0x1

    .line 510
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 580
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902c9

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 516
    .local v0, "bottomMargin":I
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0902c8

    invoke-static {v3, v4}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 518
    .local v2, "panelMargin":I
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 520
    .local v1, "guideParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 522
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 523
    invoke-virtual {v1, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 524
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 525
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 527
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 528
    sparse-switch p1, :sswitch_data_0

    .line 578
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 579
    iget-object v3, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureGuideView:Landroid/view/View;

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    invoke-virtual {v3, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0

    .line 530
    :sswitch_0
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 531
    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 532
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 535
    :sswitch_1
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 536
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 537
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 540
    :sswitch_2
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 541
    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 542
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 545
    :sswitch_3
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 546
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 547
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 553
    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_1

    .line 555
    :sswitch_4
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 556
    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 557
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 560
    :sswitch_5
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 561
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 562
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 565
    :sswitch_6
    invoke-virtual {v1, v8, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 566
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 567
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_1

    .line 570
    :sswitch_7
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 571
    invoke-virtual {v1, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 572
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 528
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch

    .line 553
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_4
        0x5a -> :sswitch_6
        0xb4 -> :sswitch_5
        0x10e -> :sswitch_7
    .end sparse-switch
.end method

.method public showGestureGuide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 214
    const-string v0, "CameraApp"

    const-string v1, "showGestureGuide"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-nez v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->getGestureEngineState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/GestureShutterController;->setRotateDegree(IZ)V

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mDetectedHandInfo:Lcom/lge/gestureshot/library/HandInfo;

    iget v0, v0, Lcom/lge/gestureshot/library/HandInfo;->mGestureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    const v1, 0x7f0a03b8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 233
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    const v1, 0x7f0204a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideStringLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/GestureGuideBox;->setVisibility(I)V

    goto :goto_0

    .line 235
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideString:Landroid/widget/TextView;

    const v1, 0x7f0a03b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 236
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGuideImage:Landroid/widget/ImageView;

    const v1, 0x7f0204a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public startGestureEngine()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->start()V

    .line 163
    const-string v0, "CameraApp"

    const-string v1, "startGestureEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method

.method public startRotation(IZ)V
    .locals 3
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    if-eq v0, p1, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 502
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDegree "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mHandGuideBox:Lcom/lge/camera/components/GestureGuideBox;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/GestureGuideBox;->setDegree(I)V

    .line 504
    iput p1, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    .line 505
    iget v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mDegree:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/GestureShutterController;->setRotateDegree(IZ)V

    .line 507
    :cond_0
    return-void
.end method

.method public stopGestureEngine()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/lge/camera/controller/GestureShutterController;->mGestureEngine:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-virtual {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->stop()V

    .line 170
    const-string v0, "CameraApp"

    const-string v1, "stopGestureEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/GestureShutterController;->hideGestureGuide()V

    .line 173
    return-void
.end method
