.class public Lcom/lge/camera/util/OnScreenHint;
.super Ljava/lang/Object;
.source "OnScreenHint.java"


# static fields
.field private static final BOTTOM_PADDING_RATE_OF_SCREEN:F = 0.2f

.field private static GRAVITY_LANDSCAPE:I = 0x0

.field private static GRAVITY_REVERSE_LANDSCAPE:I = 0x0

.field public static final TOASTMESSAGE_END:I = 0x2

.field public static final TOASTMESSAGE_NORMAL:I = 0x0

.field public static final TOASTMESSAGE_STORAGE:I = 0x1

.field static mLastMessage:[Ljava/lang/String;

.field private static sGRAVITY_PORTRAIT:I

.field private static sGRAVITY_REVERSE_PORTRAIT:I


# instance fields
.field final mContext:Landroid/content/Context;

.field mGravity:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mLcdSizeHeight:I

.field mLcdSizeWidth:I

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field private final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field private final mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x51

    sput v0, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_LANDSCAPE:I

    .line 54
    const v0, 0x800015

    sput v0, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_PORTRAIT:I

    .line 55
    const/16 v0, 0x31

    sput v0, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_REVERSE_LANDSCAPE:I

    .line 56
    const v0, 0x800013

    sput v0, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_REVERSE_PORTRAIT:I

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x800013

    const/16 v5, 0x51

    const/16 v4, 0x31

    const/4 v3, -0x2

    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget v1, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_LANDSCAPE:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    .line 64
    iput v2, p0, Lcom/lge/camera/util/OnScreenHint;->mHorizontalMargin:F

    .line 65
    iput v2, p0, Lcom/lge/camera/util/OnScreenHint;->mVerticalMargin:F

    .line 71
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mHandler:Landroid/os/Handler;

    .line 330
    new-instance v1, Lcom/lge/camera/util/OnScreenHint$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/OnScreenHint$1;-><init>(Lcom/lge/camera/util/OnScreenHint;)V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mShow:Ljava/lang/Runnable;

    .line 336
    new-instance v1, Lcom/lge/camera/util/OnScreenHint$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/util/OnScreenHint$2;-><init>(Lcom/lge/camera/util/OnScreenHint;)V

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mHide:Ljava/lang/Runnable;

    .line 84
    iput-object p1, p0, Lcom/lge/camera/util/OnScreenHint;->mContext:Landroid/content/Context;

    .line 85
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    .line 87
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 88
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 90
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    .line 91
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeWidth:I

    .line 92
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 99
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 100
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x18

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 103
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v2, 0x7f0b0008

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 104
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x3e8

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 105
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "OnScreenHint"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/OnScreenHint;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    sput v6, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_LANDSCAPE:I

    .line 109
    sput v5, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_PORTRAIT:I

    .line 110
    const v1, 0x800015

    sput v1, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_REVERSE_LANDSCAPE:I

    .line 111
    sput v4, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_REVERSE_PORTRAIT:I

    .line 118
    :goto_1
    return-void

    .line 94
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeWidth:I

    .line 95
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    goto :goto_0

    .line 113
    :cond_1
    sput v5, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_LANDSCAPE:I

    .line 114
    const v1, 0x800015

    sput v1, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_PORTRAIT:I

    .line 115
    sput v4, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_REVERSE_LANDSCAPE:I

    .line 116
    sput v6, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_REVERSE_PORTRAIT:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lge/camera/util/OnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/OnScreenHint;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleShow()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/util/OnScreenHint;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/OnScreenHint;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleHide()V

    return-void
.end method

.method public static changeOrientation(Landroid/content/Context;I)Lcom/lge/camera/util/OnScreenHint;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/camera/util/OnScreenHint;->changeOrientation(Landroid/content/Context;II)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    return-object v0
.end method

.method public static changeOrientation(Landroid/content/Context;II)Lcom/lge/camera/util/OnScreenHint;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "orientation"    # I
    .param p2, "selectedToastMessage"    # I

    .prologue
    .line 236
    if-ltz p2, :cond_0

    const/4 v1, 0x2

    if-lt p2, v1, :cond_1

    .line 237
    :cond_0
    const/4 p2, 0x0

    .line 239
    :cond_1
    sget-object v1, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {p0, v1, p1}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    .line 240
    .local v0, "hint":Lcom/lge/camera/util/OnScreenHint;
    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->show()V

    .line 241
    return-object v0
.end method

.method private declared-synchronized handleHide()V
    .locals 2

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 326
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    :cond_1
    monitor-exit p0

    return-void

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleShow()V
    .locals 6

    .prologue
    const v5, 0x3e4ccccd    # 0.2f

    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    iget-object v4, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-eq v3, v4, :cond_5

    .line 265
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleHide()V

    .line 266
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    iput-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    .line 267
    iget v1, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    .line 268
    .local v1, "gravity":I
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/OnScreenHint;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v2

    .line 269
    .local v2, "windowLand":Z
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 270
    and-int/lit8 v3, v1, 0x7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 272
    if-eqz v2, :cond_6

    .line 273
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 278
    :cond_0
    :goto_0
    and-int/lit8 v3, v1, 0x70

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 280
    if-eqz v2, :cond_7

    .line 281
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 287
    :cond_1
    :goto_1
    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    sget v4, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_LANDSCAPE:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    sget v4, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_REVERSE_LANDSCAPE:I

    if-ne v3, v4, :cond_9

    .line 288
    :cond_2
    if-eqz v2, :cond_8

    .line 289
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 290
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :cond_3
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mVerticalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 307
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mHorizontalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 308
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 309
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 311
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/lge/camera/util/OnScreenHint;->mView:Landroid/view/View;

    iget-object v5, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 316
    .end local v1    # "gravity":I
    .end local v2    # "windowLand":Z
    :cond_5
    :goto_3
    monitor-exit p0

    return-void

    .line 275
    .restart local v1    # "gravity":I
    .restart local v2    # "windowLand":Z
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 263
    .end local v1    # "gravity":I
    .end local v2    # "windowLand":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 283
    .restart local v1    # "gravity":I
    .restart local v2    # "windowLand":Z
    :cond_7
    :try_start_3
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    goto :goto_1

    .line 292
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 293
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    .line 295
    :cond_9
    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    sget v4, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_PORTRAIT:I

    if-eq v3, v4, :cond_a

    iget v3, p0, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    sget v4, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_REVERSE_PORTRAIT:I

    if-ne v3, v4, :cond_3

    .line 296
    :cond_a
    if-eqz v2, :cond_b

    .line 297
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 298
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    .line 300
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 301
    iget-object v3, p0, Lcom/lge/camera/util/OnScreenHint;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/lge/camera/util/OnScreenHint;->mLcdSizeHeight:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "OnScreenHint display failed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method private static isConfigureLandscape(Landroid/content/res/Resources;)Z
    .locals 3
    .param p0, "resource"    # Landroid/content/res/Resources;

    .prologue
    const/4 v0, 0x0

    .line 343
    if-eqz p0, :cond_0

    .line 344
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 346
    :cond_0
    return v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)Lcom/lge/camera/util/OnScreenHint;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/lge/camera/util/OnScreenHint;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "orientation"    # I

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/lge/camera/util/OnScreenHint;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;II)Lcom/lge/camera/util/OnScreenHint;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "orientation"    # I
    .param p3, "selectedToastMessage"    # I

    .prologue
    .line 179
    new-instance v2, Lcom/lge/camera/util/OnScreenHint;

    invoke-direct {v2, p0}, Lcom/lge/camera/util/OnScreenHint;-><init>(Landroid/content/Context;)V

    .line 181
    .local v2, "result":Lcom/lge/camera/util/OnScreenHint;
    const-string v7, "layout_inflater"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 183
    .local v1, "inflate":Landroid/view/LayoutInflater;
    const v7, 0x7f03001e

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 184
    .local v5, "v":Landroid/view/View;
    const v7, 0x7f0d0103

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 185
    .local v4, "tv":Landroid/widget/TextView;
    const v7, 0x7f0d0105

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 187
    .local v3, "toastView":Lcom/lge/camera/components/RotateLayout;
    if-ltz p3, :cond_0

    const/4 v7, 0x2

    if-lt p3, v7, :cond_1

    .line 188
    :cond_0
    const/4 p3, 0x0

    .line 190
    :cond_1
    sget-object v7, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, p3

    .line 191
    sget-object v7, Lcom/lge/camera/util/OnScreenHint;->mLastMessage:[Ljava/lang/String;

    aget-object v7, v7, p3

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/OnScreenHint;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v6

    .line 193
    .local v6, "windowLand":Z
    const/4 v0, 0x0

    .line 195
    .local v0, "degree":I
    packed-switch p2, :pswitch_data_0

    .line 215
    if-eqz v6, :cond_5

    const/4 v0, 0x0

    .line 216
    :goto_0
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 217
    sget v7, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_LANDSCAPE:I

    iput v7, v2, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    .line 222
    :goto_1
    iput-object v5, v2, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    .line 224
    return-object v2

    .line 197
    :pswitch_0
    if-eqz v6, :cond_2

    const/16 v0, 0x5a

    .line 198
    :goto_2
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 199
    sget v7, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_PORTRAIT:I

    iput v7, v2, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    goto :goto_1

    .line 197
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 203
    :pswitch_1
    if-eqz v6, :cond_3

    const/16 v0, 0xb4

    .line 204
    :goto_3
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 205
    sget v7, Lcom/lge/camera/util/OnScreenHint;->GRAVITY_REVERSE_LANDSCAPE:I

    iput v7, v2, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    goto :goto_1

    .line 203
    :cond_3
    const/16 v0, 0x5a

    goto :goto_3

    .line 209
    :pswitch_2
    if-eqz v6, :cond_4

    const/16 v0, 0x10e

    .line 210
    :goto_4
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 211
    sget v7, Lcom/lge/camera/util/OnScreenHint;->sGRAVITY_REVERSE_PORTRAIT:I

    iput v7, v2, Lcom/lge/camera/util/OnScreenHint;->mGravity:I

    goto :goto_1

    .line 209
    :cond_4
    const/16 v0, 0xb4

    goto :goto_4

    .line 215
    :cond_5
    const/16 v0, 0x10e

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method

.method public cancelImmediately()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleHide()V

    .line 149
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    const v2, 0x7f0d0103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 255
    .local v0, "tv":Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 256
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "This OnScreenHint was not created with OnScreenHint.makeText()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/util/OnScreenHint;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public showImmediately()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lge/camera/util/OnScreenHint;->mNextView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setView must have been called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/util/OnScreenHint;->handleShow()V

    .line 142
    return-void
.end method
