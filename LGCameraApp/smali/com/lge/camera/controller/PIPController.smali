.class public Lcom/lge/camera/controller/PIPController;
.super Ljava/lang/Object;
.source "PIPController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PIPController$PIPControllerFunction;,
        Lcom/lge/camera/controller/PIPController$RectInfo;
    }
.end annotation


# static fields
.field public static final DEFAULT_PIP_FRAME_EFFECT:I = 0x1

.field public static final PIP_MASK_FISHEYE_EFFECT:I = 0x7

.field public static final PIP_MASK_INSTANTPIC_EFFECT:I = 0x4

.field public static final PIP_MASK_OFF_EFFECT:I = 0x0

.field public static final PIP_MASK_SPLITVIEW1_EFFECT:I = 0x8

.field public static final PIP_MASK_SPLITVIEW2_EFFECT:I = 0x9

.field public static final PIP_MASK_WINDOW_EFFECT:I = 0x1

.field public static SMARTZOOM_DEFAULT_X:I = 0x0

.field public static SMARTZOOM_DEFAULT_Y:I = 0x0

.field private static final VIDEO_SIZE_FHD:I = 0x1

.field private static final VIDEO_SIZE_HD:I = 0x2

.field private static final VIDEO_SIZE_QCIF:I = 0x6

.field private static final VIDEO_SIZE_QVGA:I = 0x5

.field private static final VIDEO_SIZE_TV:I = 0x3

.field private static final VIDEO_SIZE_UVGA:I = 0x7

.field private static final VIDEO_SIZE_VGA:I = 0x4

.field public static mCurrentMaskMenu:I


# instance fields
.field private mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

.field private mInitPIPHeight:F

.field private mInitPIPWidth:F

.field private mIsResizeHandlerShown:Z

.field private mIsSmartZoomFocusViewShown:Z

.field private mMarginForFrameEffect:I

.field private mMarginHeightForFrameEffectWindow:I

.field private mMarginWidthForFrameEffectWindow:I

.field private mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

.field private mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

.field private mMaxSmallScreenHeight:I

.field private mMaxSmallScreenWidth:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinSmallScreenHeight:I

.field private mMinSmallScreenWidth:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPIPFrameMaskImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

.field private mPreviewSize:I

.field private mScaleX:F

.field private mScaleY:F

.field private mScreenSizeX:I

.field private mScreenSizeY:I

.field private mSetBitmapDone:Z

.field protected mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

.field private mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

.field private mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

.field private mSubWindowRatio:F

.field previewTopMargin:I

.field private tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

.field private vg:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_X:I

    .line 70
    sget v0, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_Y:I

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PIPController$RectInfo;-><init>(Lcom/lge/camera/controller/PIPController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 47
    new-instance v0, Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PIPController$RectInfo;-><init>(Lcom/lge/camera/controller/PIPController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 48
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    .line 49
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    .line 50
    iput-boolean v1, p0, Lcom/lge/camera/controller/PIPController;->mIsResizeHandlerShown:Z

    .line 51
    iput-boolean v1, p0, Lcom/lge/camera/controller/PIPController;->mIsSmartZoomFocusViewShown:Z

    .line 52
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    .line 54
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMode:I

    .line 55
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 84
    iput v3, p0, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    .line 85
    iput v3, p0, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    .line 87
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenWidth:I

    .line 88
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenHeight:I

    .line 89
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenWidth:I

    .line 90
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenHeight:I

    .line 92
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    .line 93
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    .line 94
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    .line 97
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mSetBitmapDone:Z

    .line 146
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .line 739
    new-instance v0, Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PIPController$RectInfo;-><init>(Lcom/lge/camera/controller/PIPController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 199
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .line 201
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->prepare()V

    .line 202
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 203
    new-instance v0, Lcom/lge/camera/components/PIPResizeHandlerView;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/components/PIPResizeHandlerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    .line 204
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lcom/lge/camera/components/SmartZoomFocusView;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    .line 207
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V
    .locals 4
    .param p1, "function"    # Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PIPController$RectInfo;-><init>(Lcom/lge/camera/controller/PIPController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 47
    new-instance v0, Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PIPController$RectInfo;-><init>(Lcom/lge/camera/controller/PIPController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 48
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    .line 49
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    .line 50
    iput-boolean v1, p0, Lcom/lge/camera/controller/PIPController;->mIsResizeHandlerShown:Z

    .line 51
    iput-boolean v1, p0, Lcom/lge/camera/controller/PIPController;->mIsSmartZoomFocusViewShown:Z

    .line 52
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    .line 54
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMode:I

    .line 55
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 84
    iput v3, p0, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    .line 85
    iput v3, p0, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    .line 87
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenWidth:I

    .line 88
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenHeight:I

    .line 89
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenWidth:I

    .line 90
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenHeight:I

    .line 92
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    .line 93
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    .line 94
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    .line 97
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mSetBitmapDone:Z

    .line 146
    iput-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .line 739
    new-instance v0, Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PIPController$RectInfo;-><init>(Lcom/lge/camera/controller/PIPController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 210
    iput-object p1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .line 211
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->prepare()V

    .line 212
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 213
    new-instance v0, Lcom/lge/camera/components/PIPResizeHandlerView;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/components/PIPResizeHandlerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    .line 214
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/lge/camera/components/SmartZoomFocusView;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    .line 217
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/PIPController;)Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PIPController;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    return-object v0
.end method

.method private addPIPFrameMaskImageToArray()V
    .locals 2

    .prologue
    .line 970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    .line 971
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f02036a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f020372

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f02036e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f02036b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f020368

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f020366

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f020370

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f020364

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f02036c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    const v1, 0x7f02036d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    return-void
.end method

.method private addPIPFrameMaskOutlineImageToArray()V
    .locals 3

    .prologue
    const v2, 0x7f020363

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    .line 985
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const v1, 0x7f020373

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const v1, 0x7f02036f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const v1, 0x7f020369

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const v1, 0x7f020367

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const v1, 0x7f020371

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 992
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    const v1, 0x7f020365

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 993
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 994
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    return-void
.end method

.method private adjustPIPPositionToBeValid(I)V
    .locals 8
    .param p1, "degree"    # I

    .prologue
    .line 1188
    sget v6, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    if-nez v6, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1191
    :cond_0
    const/4 v6, 0x4

    new-array v5, v6, [I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v5, v6

    .line 1195
    .local v5, "position":[I
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/PIPController;->setInnerSpaceForFrameEffect([I)V

    .line 1197
    const/4 v0, 0x0

    .line 1198
    .local v0, "diff":I
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    .line 1199
    .local v2, "marginWidth":I
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    .line 1200
    .local v1, "marginHeight":I
    const/16 v6, 0x5a

    if-eq p1, v6, :cond_1

    const/16 v6, 0x10e

    if-ne p1, v6, :cond_2

    .line 1201
    :cond_1
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    .line 1202
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    .line 1205
    :cond_2
    const/4 v3, 0x0

    .line 1206
    .local v3, "marginWidthForFrameEffect":I
    const/4 v4, 0x0

    .line 1208
    .local v4, "margintHeightForFrameEffect":I
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1209
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    .line 1214
    :goto_1
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    if-le v6, v7, :cond_6

    .line 1215
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v3

    iget v7, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    sub-int v0, v6, v7

    .line 1216
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # -= operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$220(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 1217
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # -= operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$120(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 1223
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    if-le v6, v7, :cond_7

    .line 1224
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    iget v7, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    sub-int v0, v6, v7

    .line 1225
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # -= operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$420(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 1226
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # -= operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$320(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 1234
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPrevPositionUpdate()V

    .line 1235
    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController;->drawSubWindow()V

    .line 1236
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setSubWindowResizeHandlerPosition()V

    goto/16 :goto_0

    .line 1211
    :cond_5
    iget v3, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    goto :goto_1

    .line 1218
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    add-int/2addr v6, v2

    add-int/2addr v6, v3

    iget v7, p0, Lcom/lge/camera/controller/PIPController;->mMinX:I

    if-ge v6, v7, :cond_3

    .line 1219
    iget v6, p0, Lcom/lge/camera/controller/PIPController;->mMinX:I

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    add-int/2addr v7, v2

    add-int/2addr v7, v3

    sub-int v0, v6, v7

    .line 1220
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$212(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 1221
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$112(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    goto :goto_2

    .line 1227
    :cond_7
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v6}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v4

    iget v7, p0, Lcom/lge/camera/controller/PIPController;->mMinY:I

    if-ge v6, v7, :cond_4

    .line 1228
    iget v6, p0, Lcom/lge/camera/controller/PIPController;->mMinY:I

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    add-int/2addr v7, v1

    add-int/2addr v7, v4

    sub-int v0, v6, v7

    .line 1230
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$412(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 1231
    iget-object v6, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v6, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$312(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    goto :goto_3
.end method

.method private checkResizeDirectionWithMargin(IIII)I
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "innerMargin"    # I
    .param p4, "outerMargin"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 627
    new-array v0, v6, [I

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v0, v8

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v0, v5

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v0, v7

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v0, v10

    .line 631
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PIPController;->resizeHandlerForFrameEffect([I)V

    .line 633
    aget v1, v0, v8

    .line 634
    .local v1, "x0":I
    aget v3, v0, v5

    .line 635
    .local v3, "y0":I
    aget v2, v0, v7

    .line 636
    .local v2, "x1":I
    aget v4, v0, v10

    .line 638
    .local v4, "y1":I
    sub-int v9, v1, p4

    if-lt p1, v9, :cond_0

    add-int v9, v2, p4

    if-gt p1, v9, :cond_0

    sub-int v9, v3, p4

    if-lt p2, v9, :cond_0

    add-int v9, v4, p4

    if-le p2, v9, :cond_2

    :cond_0
    move v5, v8

    .line 650
    :cond_1
    :goto_0
    return v5

    .line 641
    :cond_2
    add-int v8, v1, p3

    if-ge p1, v8, :cond_3

    sub-int v8, v1, p4

    if-gt p1, v8, :cond_1

    .line 643
    :cond_3
    sub-int v5, v2, p3

    if-le p1, v5, :cond_4

    add-int v5, v2, p4

    if-ge p1, v5, :cond_4

    move v5, v6

    .line 644
    goto :goto_0

    .line 645
    :cond_4
    add-int v5, v3, p3

    if-ge p2, v5, :cond_5

    sub-int v5, v3, p4

    if-le p2, v5, :cond_5

    move v5, v7

    .line 646
    goto :goto_0

    .line 647
    :cond_5
    sub-int v5, v4, p3

    if-le p2, v5, :cond_6

    add-int v5, v4, p4

    if-ge p2, v5, :cond_6

    .line 648
    const/16 v5, 0x8

    goto :goto_0

    .line 650
    :cond_6
    const/16 v5, 0xf

    goto :goto_0
.end method

.method private drawSubWindowWithScale(FF)V
    .locals 4
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 899
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isDualCameraActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I
    invoke-static {v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I
    invoke-static {v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPPosition(IIII)V

    .line 913
    :goto_0
    return-void

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I
    invoke-static {v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I
    invoke-static {v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/lge/filterpacks/SmartZoomFilter;->setPIPPosition(IIII)V

    goto :goto_0
.end method

.method private fitToRatio(Lcom/lge/camera/controller/PIPController$RectInfo;III)V
    .locals 3
    .param p1, "mRect"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p2, "diffX"    # I
    .param p3, "diffY"    # I
    .param p4, "direction"    # I

    .prologue
    .line 828
    mul-int v0, p3, p3

    mul-int v1, p2, p2

    if-le v0, v1, :cond_1

    .line 829
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    .line 830
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$102(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 841
    :goto_0
    return-void

    .line 832
    :cond_0
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$202(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    goto :goto_0

    .line 835
    :cond_1
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_2

    .line 836
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$302(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    goto :goto_0

    .line 838
    :cond_2
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$402(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    goto :goto_0
.end method

.method private getDegree()I
    .locals 4

    .prologue
    .line 1249
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->getOrientationHint()I

    move-result v1

    .line 1250
    .local v1, "recorderOrientation":I
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isCamcorderRotation(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1251
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 1256
    .local v0, "degree":I
    :goto_0
    return v0

    .line 1251
    .end local v0    # "degree":I
    :cond_0
    add-int/lit16 v2, v1, 0x10e

    rem-int/lit16 v0, v2, 0x168

    goto :goto_0

    .line 1254
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getOrientationDegree()I

    move-result v0

    .restart local v0    # "degree":I
    goto :goto_0
.end method

.method private isValidSize(Lcom/lge/camera/controller/PIPController$RectInfo;)Z
    .locals 2
    .param p1, "rect"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 888
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenWidth:I

    if-lt v0, v1, :cond_0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenWidth:I

    if-gt v0, v1, :cond_0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenHeight:I

    if-lt v0, v1, :cond_0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenHeight:I

    if-gt v0, v1, :cond_0

    .line 892
    const/4 v0, 0x1

    .line 894
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepare()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 261
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mScaleX:F

    .line 262
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mScaleY:F

    .line 264
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mScreenSizeX:I

    .line 265
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mScreenSizeY:I

    .line 267
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setMinMaxPreviewSize()V

    .line 268
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    const v2, 0x7f0d0175

    invoke-interface {v1, v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    .line 270
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->addPIPFrameMaskImageToArray()V

    .line 271
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->addPIPFrameMaskOutlineImageToArray()V

    .line 273
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isSmartZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    const v2, 0x7f0d00e2

    invoke-interface {v1, v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 277
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    const v2, 0x7f0d0122

    invoke-interface {v1, v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    const v2, 0x7f0d0123

    invoke-interface {v1, v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;

    .line 280
    .local v0, "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    new-instance v1, Lcom/lge/camera/controller/PIPController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PIPController$1;-><init>(Lcom/lge/camera/controller/PIPController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setOnDrawerOpenListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V

    .line 304
    new-instance v1, Lcom/lge/camera/controller/PIPController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PIPController$2;-><init>(Lcom/lge/camera/controller/PIPController;)V

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setOnDrawerCloseListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;)V

    .line 330
    .end local v0    # "slidingDrawer":Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
    :cond_1
    return-void
.end method

.method private setMinMaxPreviewSize()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 333
    iput v2, p0, Lcom/lge/camera/controller/PIPController;->mMinX:I

    .line 334
    iput v2, p0, Lcom/lge/camera/controller/PIPController;->mMinY:I

    .line 336
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09001a

    invoke-static {v2, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 338
    .local v0, "panel_width":I
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 339
    :cond_0
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mScreenSizeX:I

    iput v2, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    .line 344
    :goto_0
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mScreenSizeY:I

    iput v2, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    .line 346
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-nez v2, :cond_1

    .line 347
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    .line 348
    .local v1, "tmp":I
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    iput v2, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    .line 349
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    .line 351
    .end local v1    # "tmp":I
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setMinMaxSmallScreenSize()V

    .line 352
    return-void

    .line 341
    :cond_2
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mScreenSizeX:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    goto :goto_0
.end method

.method private setMinMaxSmallScreenSize()V
    .locals 6

    .prologue
    const v5, 0x3f266666    # 0.65f

    const v4, 0x3f0ccccd    # 0.55f

    .line 355
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v1

    float-to-int v0, v1

    .line 357
    .local v0, "minWidth":I
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v0

    :goto_0
    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenWidth:I

    .line 359
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .end local v0    # "minWidth":I
    :cond_0
    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mMinSmallScreenHeight:I

    .line 361
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenWidth:I

    .line 364
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenHeight:I

    .line 372
    :goto_1
    return-void

    .line 357
    .restart local v0    # "minWidth":I
    :cond_1
    int-to-float v1, v0

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    .line 367
    .end local v0    # "minWidth":I
    :cond_2
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenWidth:I

    .line 369
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxSmallScreenHeight:I

    goto :goto_1
.end method

.method private setPosition(Lcom/lge/camera/controller/PIPController$RectInfo;)Z
    .locals 1
    .param p1, "rect"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->getDegree()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/PIPController;->setToValidPosition(Lcom/lge/camera/controller/PIPController$RectInfo;I)V

    .line 731
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PIPController;->isValidSize(Lcom/lge/camera/controller/PIPController$RectInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0, p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(Lcom/lge/camera/controller/PIPController$RectInfo;)V

    .line 733
    const/4 v0, 0x1

    .line 735
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setPositionByDiff(II)Z
    .locals 5
    .param p1, "diffX"    # I
    .param p2, "diffY"    # I

    .prologue
    .line 742
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 748
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/PIPController;->setPosition(Lcom/lge/camera/controller/PIPController$RectInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    const/4 v0, 0x1

    .line 751
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSizeByDiff(III)Z
    .locals 25
    .param p1, "diffX"    # I
    .param p2, "diffY"    # I
    .param p3, "direction"    # I

    .prologue
    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v21

    and-int/lit8 v19, p3, 0x1

    if-eqz v19, :cond_3

    move/from16 v19, p1

    :goto_0
    add-int v21, v21, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v22

    and-int/lit8 v19, p3, 0x2

    if-eqz v19, :cond_4

    move/from16 v19, p2

    :goto_1
    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v23

    and-int/lit8 v19, p3, 0x4

    if-eqz v19, :cond_5

    move/from16 v19, p1

    :goto_2
    add-int v23, v23, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v24

    and-int/lit8 v19, p3, 0x8

    if-eqz v19, :cond_6

    move/from16 v19, p2

    :goto_3
    add-int v19, v19, v24

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController;->fitToRatio(Lcom/lge/camera/controller/PIPController$RectInfo;III)V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceOfResizeHandler(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    .line 770
    .local v7, "marginBefore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceOfResizeHandler(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v6

    .line 771
    .local v6, "marginAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static/range {v20 .. v20}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static/range {v22 .. v22}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceHeightOfResizeHandlerForWindowEffect(IIII)I

    move-result v9

    .line 774
    .local v9, "marginWindowHeightBefore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static/range {v20 .. v20}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static/range {v22 .. v22}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceWidthOfResizeHandlerForWindowEffect(IIII)I

    move-result v11

    .line 777
    .local v11, "marginWindowWidthBefore":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static/range {v20 .. v20}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static/range {v22 .. v22}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceHeightOfResizeHandlerForWindowEffect(IIII)I

    move-result v8

    .line 779
    .local v8, "marginWindowHeightAfter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static/range {v20 .. v20}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static/range {v22 .. v22}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceWidthOfResizeHandlerForWindowEffect(IIII)I

    move-result v10

    .line 782
    .local v10, "marginWindowWidthAfter":I
    sub-int v12, v6, v7

    .line 783
    .local v12, "offset":I
    sub-int v18, v10, v11

    .line 784
    .local v18, "offsetWidthForWindow":I
    sub-int v15, v8, v9

    .line 785
    .local v15, "offsetHeightForWindow":I
    const/16 v17, 0x0

    .line 786
    .local v17, "offsetWidth":I
    const/4 v14, 0x0

    .line 787
    .local v14, "offsetHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/PIPController;->getDegree()I

    move-result v5

    .line 789
    .local v5, "degree":I
    const/16 v16, 0x0

    .line 790
    .local v16, "offsetW":I
    const/4 v13, 0x0

    .line 792
    .local v13, "offsetH":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v19

    if-nez v19, :cond_7

    .line 793
    move v13, v12

    .line 798
    :goto_4
    if-eqz v5, :cond_0

    const/16 v19, 0xb4

    move/from16 v0, v19

    if-ne v5, v0, :cond_8

    .line 799
    :cond_0
    add-int v17, v16, v18

    .line 800
    add-int v14, v13, v15

    .line 806
    :goto_5
    and-int/lit8 v19, p3, 0x4

    if-eqz v19, :cond_1

    .line 807
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    .line 810
    :cond_1
    and-int/lit8 v19, p3, 0x8

    if-eqz v19, :cond_2

    .line 811
    neg-int v14, v14

    .line 814
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v20, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static/range {v20 .. v20}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v20

    add-int v20, v20, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v21, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v21

    add-int v21, v21, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v22, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static/range {v22 .. v22}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v22

    add-int v22, v22, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v23, v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v23

    add-int v23, v23, v14

    invoke-virtual/range {v19 .. v23}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->tmpRect:Lcom/lge/camera/controller/PIPController$RectInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/PIPController;->setPosition(Lcom/lge/camera/controller/PIPController$RectInfo;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 820
    const/16 v19, 0x1

    .line 822
    :goto_6
    return v19

    .line 756
    .end local v5    # "degree":I
    .end local v6    # "marginAfter":I
    .end local v7    # "marginBefore":I
    .end local v8    # "marginWindowHeightAfter":I
    .end local v9    # "marginWindowHeightBefore":I
    .end local v10    # "marginWindowWidthAfter":I
    .end local v11    # "marginWindowWidthBefore":I
    .end local v12    # "offset":I
    .end local v13    # "offsetH":I
    .end local v14    # "offsetHeight":I
    .end local v15    # "offsetHeightForWindow":I
    .end local v16    # "offsetW":I
    .end local v17    # "offsetWidth":I
    .end local v18    # "offsetWidthForWindow":I
    :cond_3
    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_3

    .line 795
    .restart local v5    # "degree":I
    .restart local v6    # "marginAfter":I
    .restart local v7    # "marginBefore":I
    .restart local v8    # "marginWindowHeightAfter":I
    .restart local v9    # "marginWindowHeightBefore":I
    .restart local v10    # "marginWindowWidthAfter":I
    .restart local v11    # "marginWindowWidthBefore":I
    .restart local v12    # "offset":I
    .restart local v13    # "offsetH":I
    .restart local v14    # "offsetHeight":I
    .restart local v15    # "offsetHeightForWindow":I
    .restart local v16    # "offsetW":I
    .restart local v17    # "offsetWidth":I
    .restart local v18    # "offsetWidthForWindow":I
    :cond_7
    move/from16 v16, v12

    goto :goto_4

    .line 802
    :cond_8
    add-int v17, v16, v15

    .line 803
    add-int v14, v13, v18

    goto :goto_5

    .line 822
    :cond_9
    const/16 v19, 0x0

    goto :goto_6
.end method

.method private setSubWindowResizeHandlerPosition()V
    .locals 12

    .prologue
    .line 655
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setSubWindowResizeHandlerPosition: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v11}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v11}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v11}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v11}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    const/4 v0, 0x3

    .line 659
    .local v0, "margin":I
    const/4 v1, 0x0

    .line 661
    .local v1, "padding":I
    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v2, 0x0

    .line 662
    .local v2, "paddingX":I
    :goto_0
    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_1

    move v3, v1

    .line 664
    .local v3, "paddingY":I
    :goto_1
    const/4 v9, 0x4

    new-array v4, v9, [I

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v10}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v10

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x0

    aput v10, v4, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v10}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v10

    add-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x0

    aput v10, v4, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v10}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v10

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x0

    aput v10, v4, v9

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v10}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v10

    sub-int/2addr v10, v0

    add-int/lit8 v10, v10, 0x0

    aput v10, v4, v9

    .line 669
    .local v4, "position":[I
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->getDegree()I

    move-result v9

    invoke-virtual {p0, v4, v9}, Lcom/lge/camera/controller/PIPController;->resizeHandlerForFrameEffect([II)V

    .line 671
    const/4 v9, 0x0

    aget v5, v4, v9

    .line 672
    .local v5, "x0":I
    const/4 v9, 0x1

    aget v7, v4, v9

    .line 673
    .local v7, "y0":I
    const/4 v9, 0x2

    aget v6, v4, v9

    .line 674
    .local v6, "x1":I
    const/4 v9, 0x3

    aget v8, v4, v9

    .line 676
    .local v8, "y1":I
    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v9, v5, v7, v6, v8}, Lcom/lge/camera/components/PIPResizeHandlerView;->setPosition(IIII)V

    .line 677
    return-void

    .end local v2    # "paddingX":I
    .end local v3    # "paddingY":I
    .end local v4    # "position":[I
    .end local v5    # "x0":I
    .end local v6    # "x1":I
    .end local v7    # "y0":I
    .end local v8    # "y1":I
    :cond_0
    move v2, v1

    .line 661
    goto :goto_0

    .line 662
    .restart local v2    # "paddingX":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setToValidPosition(Lcom/lge/camera/controller/PIPController$RectInfo;I)V
    .locals 5
    .param p1, "rect"    # Lcom/lge/camera/controller/PIPController$RectInfo;
    .param p2, "degree"    # I

    .prologue
    .line 844
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mMinX:I

    .line 845
    .local v2, "minX":I
    iget v3, p0, Lcom/lge/camera/controller/PIPController;->mMinY:I

    .line 846
    .local v3, "minY":I
    iget v0, p0, Lcom/lge/camera/controller/PIPController;->mMaxX:I

    .line 847
    .local v0, "maxX":I
    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMaxY:I

    .line 849
    .local v1, "maxY":I
    iget-object v4, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-nez v4, :cond_5

    .line 850
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    sub-int/2addr v3, v4

    .line 851
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    add-int/2addr v1, v4

    .line 857
    :goto_0
    if-eqz p2, :cond_0

    const/16 v4, 0xb4

    if-ne p2, v4, :cond_6

    .line 858
    :cond_0
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    sub-int/2addr v2, v4

    .line 859
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    add-int/2addr v0, v4

    .line 860
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    sub-int/2addr v3, v4

    .line 861
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    add-int/2addr v1, v4

    .line 869
    :goto_1
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    if-gt v4, v2, :cond_1

    .line 870
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    sub-int v4, v2, v4

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$212(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 871
    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1, v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$102(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 873
    :cond_1
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    if-gt v4, v3, :cond_2

    .line 874
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    sub-int v4, v3, v4

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$412(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 875
    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1, v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$302(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 877
    :cond_2
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    if-lt v4, v0, :cond_3

    .line 878
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    sub-int v4, v0, v4

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$112(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 879
    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1, v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$202(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 881
    :cond_3
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    if-lt v4, v1, :cond_4

    .line 882
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    sub-int v4, v1, v4

    # += operator for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$312(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 883
    # setter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1, v1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$402(Lcom/lge/camera/controller/PIPController$RectInfo;I)I

    .line 885
    :cond_4
    return-void

    .line 853
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    sub-int/2addr v2, v4

    .line 854
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    add-int/2addr v0, v4

    goto :goto_0

    .line 863
    :cond_6
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    sub-int/2addr v2, v4

    .line 864
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    add-int/2addr v0, v4

    .line 865
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    sub-int/2addr v3, v4

    .line 866
    iget v4, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    add-int/2addr v1, v4

    goto :goto_1
.end method


# virtual methods
.method public checkResizeDirection(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 620
    const/16 v0, 0x50

    .line 621
    .local v0, "innerMargin":I
    const/16 v1, 0x50

    .line 623
    .local v1, "outerMargin":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/lge/camera/controller/PIPController;->checkResizeDirectionWithMargin(IIII)I

    move-result v2

    return v2
.end method

.method public confirmSubWindow()V
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPrevPositionUpdate()V

    .line 579
    return-void
.end method

.method public disableObjectTrackingForSmartZoom()V
    .locals 0

    .prologue
    .line 1312
    return-void
.end method

.method public drawSubWindow()V
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/lge/camera/controller/PIPController;->mScaleX:F

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mScaleY:F

    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/PIPController;->drawSubWindowWithScale(FF)V

    .line 591
    return-void
.end method

.method public enableObjectTrackingForSmartZoom()V
    .locals 0

    .prologue
    .line 1309
    return-void
.end method

.method public getDualRecSubWindowResizeHandler()Lcom/lge/camera/components/PIPResizeHandlerView;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mHeight:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$500(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    return v0
.end method

.method public getInitPIPSubWindowPosition(Ljava/lang/String;)[I
    .locals 27
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v23

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 380
    sget v10, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    .line 381
    .local v10, "maxScreenSizeX":I
    mul-int/lit8 v23, v10, 0x9

    div-int/lit8 v11, v23, 0x10

    .line 387
    .local v11, "maxScreenSizeY":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_0

    .line 388
    move/from16 v22, v10

    .line 389
    .local v22, "temp":I
    move v10, v11

    .line 390
    move/from16 v11, v22

    .line 393
    .end local v22    # "temp":I
    :cond_0
    const-string v23, "1920x1088"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_1

    const-string v23, "1920x1080"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 394
    :cond_1
    const/high16 v23, 0x43a00000    # 320.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    .line 395
    const/high16 v23, 0x43340000    # 180.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    .line 407
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 408
    .local v21, "subWindowWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v14, v0

    .line 410
    .local v14, "subWindowHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_3

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    move/from16 v24, v0

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v14, v0

    .line 423
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x7f09001a

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v12

    .line 426
    .local v12, "panelWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getOrientationDegree()I

    move-result v5

    .line 428
    .local v5, "degree":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_4

    .line 429
    add-int/lit8 v23, v5, 0x5a

    move/from16 v0, v23

    rem-int/lit16 v5, v0, 0x168

    .line 432
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x40e9999a    # 7.3f

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v18, v0

    .line 434
    .local v18, "subWindowMargin_land_top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x42a96666    # 84.7f

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v17, v0

    .line 436
    .local v17, "subWindowMargin_land_left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const/high16 v24, 0x42a80000    # 84.0f

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v20, v0

    .line 438
    .local v20, "subWindowMargin_port_top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const v24, 0x40d66666    # 6.7f

    invoke-static/range {v23 .. v24}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v19, v0

    .line 441
    .local v19, "subWindowMargin_port_right":I
    if-eqz v5, :cond_5

    const/16 v23, 0xb4

    move/from16 v0, v23

    if-ne v5, v0, :cond_a

    .line 442
    :cond_5
    move/from16 v15, v17

    .line 443
    .local v15, "subWindowMarginX":I
    move/from16 v16, v18

    .line 449
    .local v16, "subWindowMarginY":I
    :goto_2
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v13, v0, [I

    .line 451
    .local v13, "retPosition":[I
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v8, v0, [[I

    const/16 v23, 0x0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v15, v24, v25

    const/16 v25, 0x1

    sub-int v26, v11, v16

    sub-int v26, v26, v14

    aput v26, v24, v25

    aput-object v24, v8, v23

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sub-int v26, v10, v15

    sub-int v26, v26, v12

    sub-int v26, v26, v21

    aput v26, v24, v25

    const/16 v25, 0x1

    sub-int v26, v11, v16

    sub-int v26, v26, v14

    aput v26, v24, v25

    aput-object v24, v8, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sub-int v26, v10, v15

    sub-int v26, v26, v12

    sub-int v26, v26, v21

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v16, v24, v25

    aput-object v24, v8, v23

    const/16 v23, 0x3

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v15, v24, v25

    const/16 v25, 0x1

    aput v16, v24, v25

    aput-object v24, v8, v23

    .line 459
    .local v8, "initPositionLand":[[I
    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v9, v0, [[I

    const/16 v23, 0x0

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v16, v24, v25

    const/16 v25, 0x1

    aput v15, v24, v25

    aput-object v24, v9, v23

    const/16 v23, 0x1

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput v16, v24, v25

    const/16 v25, 0x1

    sub-int v26, v11, v12

    sub-int v26, v26, v15

    sub-int v26, v26, v14

    aput v26, v24, v25

    aput-object v24, v9, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sub-int v26, v10, v16

    sub-int v26, v26, v21

    aput v26, v24, v25

    const/16 v25, 0x1

    sub-int v26, v11, v12

    sub-int v26, v26, v15

    sub-int v26, v26, v14

    aput v26, v24, v25

    aput-object v24, v9, v23

    const/16 v23, 0x3

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sub-int v26, v10, v16

    sub-int v26, v26, v21

    aput v26, v24, v25

    const/16 v25, 0x1

    aput v15, v24, v25

    aput-object v24, v9, v23

    .line 468
    .local v9, "initPositionPort":[[I
    sget v6, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUBWINDOW_INIT_POSITION:I

    .line 472
    .local v6, "idxPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-eqz v23, :cond_b

    move-object v7, v8

    .line 474
    .local v7, "initPosition":[[I
    :goto_3
    const/16 v23, 0x0

    aget-object v24, v7, v6

    const/16 v25, 0x0

    aget v24, v24, v25

    aput v24, v13, v23

    .line 475
    const/16 v23, 0x1

    aget-object v24, v7, v6

    const/16 v25, 0x1

    aget v24, v24, v25

    aput v24, v13, v23

    .line 476
    const/16 v23, 0x2

    const/16 v24, 0x0

    aget v24, v13, v24

    add-int v24, v24, v21

    aput v24, v13, v23

    .line 477
    const/16 v23, 0x3

    const/16 v24, 0x1

    aget v24, v13, v24

    add-int v24, v24, v14

    aput v24, v13, v23

    .line 479
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/lge/camera/controller/PIPController;->setInnerSpaceForFrameEffect([I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v23

    if-nez v23, :cond_c

    .line 482
    const/16 v23, 0x1

    aget v24, v13, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    aput v24, v13, v23

    .line 487
    :goto_4
    const/16 v23, 0x2

    const/16 v24, 0x0

    aget v24, v13, v24

    add-int v24, v24, v21

    aput v24, v13, v23

    .line 488
    const/16 v23, 0x3

    const/16 v24, 0x1

    aget v24, v13, v24

    add-int v24, v24, v14

    aput v24, v13, v23

    .line 490
    invoke-virtual/range {p0 .. p1}, Lcom/lge/camera/controller/PIPController;->setVideoSize(Ljava/lang/String;)V

    .line 491
    const/16 v23, 0x0

    aget v23, v13, v23

    const/16 v24, 0x1

    aget v24, v13, v24

    const/16 v25, 0x2

    aget v25, v13, v25

    const/16 v26, 0x3

    aget v26, v13, v26

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController;->setSubWindowPosition(IIII)V

    .line 492
    return-object v13

    .line 383
    .end local v5    # "degree":I
    .end local v6    # "idxPosition":I
    .end local v7    # "initPosition":[[I
    .end local v8    # "initPositionLand":[[I
    .end local v9    # "initPositionPort":[[I
    .end local v10    # "maxScreenSizeX":I
    .end local v11    # "maxScreenSizeY":I
    .end local v12    # "panelWidth":I
    .end local v13    # "retPosition":[I
    .end local v14    # "subWindowHeight":I
    .end local v15    # "subWindowMarginX":I
    .end local v16    # "subWindowMarginY":I
    .end local v17    # "subWindowMargin_land_left":I
    .end local v18    # "subWindowMargin_land_top":I
    .end local v19    # "subWindowMargin_port_right":I
    .end local v20    # "subWindowMargin_port_top":I
    .end local v21    # "subWindowWidth":I
    :cond_6
    sget v10, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    .line 384
    .restart local v10    # "maxScreenSizeX":I
    sget v11, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    .restart local v11    # "maxScreenSizeY":I
    goto/16 :goto_0

    .line 396
    :cond_7
    const-string v23, "1280x960"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 397
    const/high16 v23, 0x43700000    # 240.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    .line 398
    const/high16 v23, 0x43340000    # 180.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    goto/16 :goto_1

    .line 399
    :cond_8
    const-string v23, "1280x720"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 400
    const/high16 v23, 0x43a00000    # 320.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    .line 401
    const/high16 v23, 0x43340000    # 180.0f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    goto/16 :goto_1

    .line 402
    :cond_9
    const-string v23, "720x480"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 403
    const v23, 0x4340c000    # 192.75f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPWidth:F

    .line 404
    const v23, 0x43008000    # 128.5f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/camera/controller/PIPController;->mInitPIPHeight:F

    goto/16 :goto_1

    .line 445
    .restart local v5    # "degree":I
    .restart local v12    # "panelWidth":I
    .restart local v14    # "subWindowHeight":I
    .restart local v17    # "subWindowMargin_land_left":I
    .restart local v18    # "subWindowMargin_land_top":I
    .restart local v19    # "subWindowMargin_port_right":I
    .restart local v20    # "subWindowMargin_port_top":I
    .restart local v21    # "subWindowWidth":I
    :cond_a
    move/from16 v15, v20

    .line 446
    .restart local v15    # "subWindowMarginX":I
    move/from16 v16, v19

    .restart local v16    # "subWindowMarginY":I
    goto/16 :goto_2

    .restart local v6    # "idxPosition":I
    .restart local v8    # "initPositionLand":[[I
    .restart local v9    # "initPositionPort":[[I
    .restart local v13    # "retPosition":[I
    :cond_b
    move-object v7, v9

    .line 472
    goto/16 :goto_3

    .line 484
    .restart local v7    # "initPosition":[[I
    :cond_c
    const/16 v23, 0x0

    aget v24, v13, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    aput v24, v13, v23

    goto/16 :goto_4
.end method

.method public getInnerSpaceHeightOfResizeHandlerForWindowEffect(IIII)I
    .locals 3
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 1110
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1111
    sub-int v1, p3, p1

    mul-int/lit8 v1, v1, 0x4a

    div-int/lit16 v0, v1, 0x200

    .line 1115
    .local v0, "retSpace":I
    :goto_0
    sget v1, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .end local v0    # "retSpace":I
    :goto_1
    return v0

    .line 1113
    :cond_0
    sub-int v1, p4, p2

    mul-int/lit8 v1, v1, 0x4a

    div-int/lit16 v0, v1, 0x200

    .restart local v0    # "retSpace":I
    goto :goto_0

    .line 1115
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getInnerSpaceOfResizeHandler(IIII)I
    .locals 4
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1095
    const/4 v0, 0x0

    .line 1096
    .local v0, "retSpace":I
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1097
    sub-int v1, p4, p2

    sub-int v2, p3, p1

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v0, v1

    .line 1101
    :goto_0
    return v0

    .line 1099
    :cond_0
    sub-int v1, p3, p1

    sub-int v2, p4, p2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v0, v1

    goto :goto_0
.end method

.method public getInnerSpaceOfResizeHandler(Lcom/lge/camera/controller/PIPController$RectInfo;)I
    .locals 4
    .param p1, "rect"    # Lcom/lge/camera/controller/PIPController$RectInfo;

    .prologue
    .line 1105
    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {p1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceOfResizeHandler(IIII)I

    move-result v0

    return v0
.end method

.method public getInnerSpaceWidthOfResizeHandlerForWindowEffect(IIII)I
    .locals 3
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1121
    sub-int v1, p3, p1

    mul-int/lit8 v1, v1, 0x12

    div-int/lit16 v0, v1, 0x200

    .line 1125
    .local v0, "retSpace":I
    :goto_0
    sget v1, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .end local v0    # "retSpace":I
    :goto_1
    return v0

    .line 1123
    :cond_0
    sub-int v1, p4, p2

    mul-int/lit8 v1, v1, 0x12

    div-int/lit16 v0, v1, 0x200

    .restart local v0    # "retSpace":I
    goto :goto_0

    .line 1125
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getLeftTopX()I
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    return v0
.end method

.method public getLeftTopY()I
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1267
    iget v0, p0, Lcom/lge/camera/controller/PIPController;->mMode:I

    return v0
.end method

.method public getRightBottomX()I
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    return v0
.end method

.method public getRightBottomY()I
    .locals 1

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    return v0
.end method

.method public getSmartZoomFocusViewMode()I
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/SmartZoomFocusView;->getSmartZoomFocusViewMode()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mWidth:I
    invoke-static {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$600(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v0

    return v0
.end method

.method public hideSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 533
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mIsSmartZoomFocusViewShown:Z

    .line 535
    :cond_0
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 516
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 517
    iput-boolean v2, p0, Lcom/lge/camera/controller/PIPController;->mIsResizeHandlerShown:Z

    .line 518
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PIPController;->setMode(I)V

    .line 520
    :cond_0
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 547
    sget v0, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_X:I

    sget v1, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_Y:I

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PIPController;->setSmartZoomFocusViewPosition(II)V

    .line 548
    return-void
.end method

.method public isInSmartZoomFocusViewArea(II)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 934
    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v9

    if-nez v9, :cond_1

    .line 963
    :cond_0
    :goto_0
    return v7

    .line 938
    :cond_1
    const/4 v9, 0x4

    new-array v2, v9, [I

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v2, v7

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v2, v8

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v2, v10

    iget-object v9, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v9}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v9

    aput v9, v2, v11

    .line 943
    .local v2, "position":[I
    aget v3, v2, v7

    .line 944
    .local v3, "x0":I
    aget v5, v2, v8

    .line 945
    .local v5, "y0":I
    aget v4, v2, v10

    .line 946
    .local v4, "x1":I
    aget v6, v2, v11

    .line 951
    .local v6, "y1":I
    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController;->getSmartZoomFocusViewMode()I

    move-result v9

    if-ne v9, v10, :cond_2

    .line 952
    sub-int v9, v4, v3

    sget v10, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_AUTO_ZOOM_AREA_MARGIN_WIDTH:I

    sub-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 953
    .local v1, "marginWidth":I
    sub-int v9, v6, v5

    sget v10, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_AUTO_ZOOM_AREA_MARGIN_HEIGHT:I

    sub-int/2addr v9, v10

    div-int/lit8 v0, v9, 0x2

    .line 959
    .local v0, "marginHeight":I
    :goto_1
    add-int v9, v3, v1

    if-le p1, v9, :cond_0

    add-int v9, v5, v0

    if-le p2, v9, :cond_0

    sub-int v9, v4, v1

    if-ge p1, v9, :cond_0

    sub-int v9, v6, v0

    if-ge p2, v9, :cond_0

    move v7, v8

    .line 961
    goto :goto_0

    .line 955
    .end local v0    # "marginHeight":I
    .end local v1    # "marginWidth":I
    :cond_2
    sub-int v9, v4, v3

    sget v10, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_MANUAL_ZOOM_AREA_MARGIN_WIDTH:I

    sub-int/2addr v9, v10

    div-int/lit8 v1, v9, 0x2

    .line 956
    .restart local v1    # "marginWidth":I
    sub-int v9, v6, v5

    sget v10, Lcom/lge/camera/properties/CameraConstants;->SMARTZOOM_MANUAL_ZOOM_AREA_MARGIN_HEIGHT:I

    sub-int/2addr v9, v10

    div-int/lit8 v0, v9, 0x2

    .restart local v0    # "marginHeight":I
    goto :goto_1
.end method

.method public isInSubWindow(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 916
    const/4 v7, 0x4

    new-array v0, v7, [I

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v0, v6

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v0, v5

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v0, v8

    iget-object v7, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v7}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v7

    aput v7, v0, v9

    .line 920
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PIPController;->resizeHandlerForFrameEffect([I)V

    .line 922
    aget v1, v0, v6

    .line 923
    .local v1, "x0":I
    aget v3, v0, v5

    .line 924
    .local v3, "y0":I
    aget v2, v0, v8

    .line 925
    .local v2, "x1":I
    aget v4, v0, v9

    .line 927
    .local v4, "y1":I
    if-le p1, v1, :cond_0

    if-le p2, v3, :cond_0

    if-ge p1, v2, :cond_0

    if-ge p2, v4, :cond_0

    .line 930
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public isObjectTrackingEnabledForSmartZoom()Z
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public isResizeHandlerShown()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mIsResizeHandlerShown:Z

    return v0
.end method

.method public isSmartZoomFocusViewShown()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mIsSmartZoomFocusViewShown:Z

    return v0
.end method

.method public moveSubWindow(II)V
    .locals 2
    .param p1, "diffX"    # I
    .param p2, "diffY"    # I

    .prologue
    .line 559
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PIPController;->setPositionByDiff(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 560
    sget-boolean v0, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController;->drawSubWindow()V

    .line 564
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setSubWindowResizeHandlerPosition()V

    .line 566
    :cond_2
    return-void
.end method

.method public resizeHandlerForFrameEffect([I)V
    .locals 1
    .param p1, "position"    # [I

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/controller/PIPController;->resizeHandlerForFrameEffect([II)V

    .line 1166
    return-void
.end method

.method public resizeHandlerForFrameEffect([II)V
    .locals 7
    .param p1, "position"    # [I
    .param p2, "degree"    # I

    .prologue
    const/16 v6, 0xb4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1129
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PIPController;->setInnerSpaceForFrameEffect([I)V

    .line 1131
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1132
    aget v0, p1, v3

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 1133
    aget v0, p1, v5

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    sub-int/2addr v0, v1

    aput v0, p1, v5

    .line 1135
    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_1

    .line 1136
    :cond_0
    aget v0, p1, v3

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 1137
    aget v0, p1, v5

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v5

    .line 1138
    aget v0, p1, v2

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 1139
    aget v0, p1, v4

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v4

    .line 1162
    :goto_0
    return-void

    .line 1141
    :cond_1
    aget v0, p1, v2

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 1142
    aget v0, p1, v4

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v4

    .line 1143
    aget v0, p1, v3

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 1144
    aget v0, p1, v5

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v5

    goto :goto_0

    .line 1147
    :cond_2
    aget v0, p1, v2

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 1148
    aget v0, p1, v4

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    sub-int/2addr v0, v1

    aput v0, p1, v4

    .line 1150
    if-eqz p2, :cond_3

    if-ne p2, v6, :cond_4

    .line 1151
    :cond_3
    aget v0, p1, v2

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 1152
    aget v0, p1, v4

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v4

    .line 1153
    aget v0, p1, v3

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 1154
    aget v0, p1, v5

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v5

    goto :goto_0

    .line 1156
    :cond_4
    aget v0, p1, v3

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v3

    .line 1157
    aget v0, p1, v5

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v5

    .line 1158
    aget v0, p1, v2

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    add-int/2addr v0, v1

    aput v0, p1, v2

    .line 1159
    aget v0, p1, v4

    iget v1, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    sub-int/2addr v0, v1

    aput v0, p1, v4

    goto :goto_0
.end method

.method public resizeSubWindowByDiff(III)V
    .locals 1
    .param p1, "diffX"    # I
    .param p2, "diffY"    # I
    .param p3, "direction"    # I

    .prologue
    .line 569
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/controller/PIPController;->setSizeByDiff(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    sget-boolean v0, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {p0}, Lcom/lge/camera/controller/PIPController;->drawSubWindow()V

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setSubWindowResizeHandlerPosition()V

    .line 575
    :cond_1
    return-void
.end method

.method public resizeSubWindowResizeHandler(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 500
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/PIPResizeHandlerView;->updatePosition(I)V

    .line 501
    return-void
.end method

.method public restoreSubWindow()V
    .locals 1

    .prologue
    .line 582
    sget-boolean v0, Lcom/lge/camera/properties/MultimediaProperties;->PIP_SUPPORT_REALTIME_WINDOW_UPDATE:Z

    if-eqz v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->restorePosition()V

    .line 586
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setSubWindowResizeHandlerPosition()V

    goto :goto_0
.end method

.method public setBitmapDone(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1240
    iput-boolean p1, p0, Lcom/lge/camera/controller/PIPController;->mSetBitmapDone:Z

    .line 1241
    return-void
.end method

.method public setDefaultPIPMask()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x1

    sput v0, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    .line 1092
    return-void
.end method

.method public setDirectionForRatio(IIII)I
    .locals 5
    .param p1, "direction"    # I
    .param p2, "initialX"    # I
    .param p3, "initialY"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 594
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 596
    .local v1, "halfWidth":I
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 599
    .local v0, "halfHeight":I
    const/16 v2, 0xf

    if-eq p1, v2, :cond_1

    if-eqz p1, :cond_1

    .line 601
    and-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_0

    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_3

    .line 603
    :cond_0
    if-ge p2, v1, :cond_2

    .line 604
    or-int/lit8 p1, p1, 0x1

    .line 616
    :cond_1
    :goto_0
    return p1

    .line 606
    :cond_2
    or-int/lit8 p1, p1, 0x4

    goto :goto_0

    .line 609
    :cond_3
    if-ge p3, v0, :cond_4

    .line 610
    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    .line 612
    :cond_4
    or-int/lit8 p1, p1, 0x8

    goto :goto_0
.end method

.method public setInnerSpaceForFrameEffect([I)V
    .locals 8
    .param p1, "position"    # [I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1169
    aget v0, p1, v4

    aget v1, p1, v5

    aget v2, p1, v6

    aget v3, p1, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceOfResizeHandler(IIII)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mMarginForFrameEffect:I

    .line 1171
    aget v0, p1, v4

    aget v1, p1, v5

    aget v2, p1, v6

    aget v3, p1, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceHeightOfResizeHandlerForWindowEffect(IIII)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mMarginHeightForFrameEffectWindow:I

    .line 1173
    aget v0, p1, v4

    aget v1, p1, v5

    aget v2, p1, v6

    aget v3, p1, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController;->getInnerSpaceWidthOfResizeHandlerForWindowEffect(IIII)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mMarginWidthForFrameEffectWindow:I

    .line 1175
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1260
    const-string v1, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubWindow Mode is set to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string v0, "NORMAL mode"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iput p1, p0, Lcom/lge/camera/controller/PIPController;->mMode:I

    .line 1264
    return-void

    .line 1260
    :cond_0
    const-string v0, "RESIZE mode"

    goto :goto_0
.end method

.method public setPIPMask(I)Z
    .locals 16
    .param p1, "pipFrameSelectedMenu"    # I

    .prologue
    .line 998
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/camera/controller/PIPController;->mSetBitmapDone:Z

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 999
    const-string v1, "CameraApp"

    const-string v3, "Previous setPIPMask is ongoing. Do nothing and just return"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    const/4 v1, 0x0

    .line 1087
    :goto_0
    return v1

    .line 1002
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lge/camera/controller/PIPController;->mSetBitmapDone:Z

    .line 1003
    new-instance v13, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v13}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1004
    .local v13, "option":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput v1, v13, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1005
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 1006
    const/4 v9, 0x0

    .line 1007
    .local v9, "degree":I
    const/4 v10, 0x0

    .line 1011
    .local v10, "degreeOffset":I
    const/4 v11, 0x0

    .line 1013
    .local v11, "effectType":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 1014
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1015
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    .line 1017
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 1018
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 1019
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    .line 1023
    :cond_2
    sput p1, Lcom/lge/camera/controller/PIPController;->mCurrentMaskMenu:I

    .line 1024
    const-string v1, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPIPMask : pipFrameSelectedMenu = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskImage:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1028
    .local v12, "maskBitmapShape":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1029
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mPIPFrameMaskOutlineImage:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v3, v1, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1034
    .local v2, "maskBitmapOutline":Landroid/graphics/Bitmap;
    :goto_1
    const/16 v1, 0x8

    move/from16 v0, p1

    if-eq v0, v1, :cond_a

    const/16 v1, 0x9

    move/from16 v0, p1

    if-eq v0, v1, :cond_a

    .line 1037
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    if-eqz v2, :cond_3

    .line 1039
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyyy"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v14, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1040
    .local v14, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 1041
    .local v5, "strCurDate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v3, 0xb7

    const/16 v4, 0x1c8

    const/16 v6, 0x2a

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x0

    invoke-static {v7, v8, v15}, Landroid/graphics/Color;->rgb(III)I

    move-result v7

    const-string v8, "HYRPostM_13_0624.ttf"

    invoke-static/range {v1 .. v8}, Lcom/lge/camera/util/Util;->drawTextToBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IILjava/lang/String;IILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1044
    const/4 v10, -0x6

    .line 1047
    .end local v5    # "strCurDate":Ljava/lang/String;
    .end local v14    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_3
    if-eqz v9, :cond_4

    const/16 v1, 0xb4

    if-ne v9, v1, :cond_8

    .line 1048
    :cond_4
    add-int/lit16 v1, v10, 0x10e

    invoke-static {v12, v1}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1052
    :goto_2
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    .line 1054
    if-eqz v2, :cond_6

    .line 1055
    if-eqz v9, :cond_5

    const/16 v1, 0xb4

    if-ne v9, v1, :cond_9

    .line 1056
    :cond_5
    add-int/lit16 v1, v10, 0x10e

    invoke-static {v2, v1}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1063
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    .line 1069
    :goto_4
    const/4 v1, 0x7

    move/from16 v0, p1

    if-ne v0, v1, :cond_b

    .line 1070
    const/4 v11, 0x1

    .line 1078
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1079
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    invoke-static {v1, v3, v11}, Lcom/lge/filterpacks/SmartZoomFilter;->setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    .line 1085
    :goto_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getOrientationDegree()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/lge/camera/controller/PIPController;->adjustPIPPositionToBeValid(I)V

    .line 1087
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1032
    .end local v2    # "maskBitmapOutline":Landroid/graphics/Bitmap;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "maskBitmapOutline":Landroid/graphics/Bitmap;
    goto/16 :goto_1

    .line 1050
    :cond_8
    add-int/lit8 v1, v10, 0x5a

    invoke-static {v12, v1}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_2

    .line 1059
    :cond_9
    add-int/lit8 v1, v10, 0x5a

    invoke-static {v2, v1}, Lcom/lge/camera/util/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 1065
    :cond_a
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    .line 1066
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    goto :goto_4

    .line 1071
    :cond_b
    const/16 v1, 0x8

    move/from16 v0, p1

    if-eq v0, v1, :cond_c

    const/16 v1, 0x9

    move/from16 v0, p1

    if-ne v0, v1, :cond_d

    .line 1073
    :cond_c
    const/4 v11, 0x2

    goto :goto_5

    .line 1075
    :cond_d
    const/4 v11, 0x0

    goto :goto_5

    .line 1082
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapShapeFinal:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/camera/controller/PIPController;->mMaskBitmapOutlineFinal:Landroid/graphics/Bitmap;

    invoke-static {v1, v3, v11}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    goto :goto_6
.end method

.method public setPIPRotate(I)V
    .locals 1
    .param p1, "degree"    # I

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    invoke-static {p1}, Lcom/lge/filterpacks/SmartZoomFilter;->setPIPRotate(I)V

    .line 1184
    :goto_0
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PIPController;->adjustPIPPositionToBeValid(I)V

    .line 1185
    return-void

    .line 1181
    :cond_0
    invoke-static {p1}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPRotate(I)V

    goto :goto_0
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v10, 0x42b40000    # 90.0f

    .line 683
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-static {v0, v5}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v7, v0

    .line 688
    .local v7, "dimenWidth":I
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v6, v0

    .line 703
    .local v6, "dimenHeight":I
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    move v9, v7

    .line 704
    .local v9, "mTargetZoomAreaWidth":I
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v6

    .line 706
    .local v8, "mTargetZoomAreaHeight":I
    :goto_2
    iget v0, p0, Lcom/lge/camera/controller/PIPController;->previewTopMargin:I

    sub-int/2addr p1, v0

    .line 708
    div-int/lit8 v0, v9, 0x2

    sub-int v1, p1, v0

    .line 709
    .local v1, "x0":I
    div-int/lit8 v0, v8, 0x2

    sub-int v2, p2, v0

    .line 710
    .local v2, "y0":I
    div-int/lit8 v0, v9, 0x2

    add-int v3, p1, v0

    .line 711
    .local v3, "x1":I
    div-int/lit8 v0, v8, 0x2

    add-int v4, p2, v0

    .line 713
    .local v4, "y1":I
    const-string v0, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSmartZoomFocusViewPosition: ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " ,"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ") ("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " ,"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {p1, p2}, Lcom/lge/filterpacks/ObjectFilter;->updateObjPosition(II)V

    .line 717
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 718
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->getDegree()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/SmartZoomFocusView;->setPositionAndUpdate(IIIII)V

    .line 719
    return-void

    .line 693
    .end local v1    # "x0":I
    .end local v2    # "y0":I
    .end local v3    # "x1":I
    .end local v4    # "y1":I
    .end local v6    # "dimenHeight":I
    .end local v7    # "dimenWidth":I
    .end local v8    # "mTargetZoomAreaHeight":I
    .end local v9    # "mTargetZoomAreaWidth":I
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v5, 0x43200000    # 160.0f

    invoke-static {v0, v5}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v7, v0

    .line 697
    .restart local v7    # "dimenWidth":I
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v6, v0

    .restart local v6    # "dimenHeight":I
    goto/16 :goto_0

    :cond_1
    move v9, v6

    .line 703
    goto/16 :goto_1

    .restart local v9    # "mTargetZoomAreaWidth":I
    :cond_2
    move v8, v7

    .line 704
    goto :goto_2
.end method

.method public setSmartZoomLayoutSize(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I

    .prologue
    .line 538
    div-int/lit8 v2, p1, 0x2

    add-int v0, v2, p3

    .line 539
    .local v0, "initX":I
    div-int/lit8 v1, p2, 0x2

    .line 540
    .local v1, "initY":I
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mScreenSizeY:I

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/lge/camera/controller/PIPController;->previewTopMargin:I

    .line 541
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->previewTopMargin:I

    add-int/2addr v2, v0

    :goto_0
    sput v2, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_X:I

    .line 543
    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    .end local v1    # "initY":I
    :goto_1
    sput v1, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_Y:I

    .line 544
    return-void

    .line 541
    .restart local v1    # "initY":I
    :cond_0
    iget v2, p0, Lcom/lge/camera/controller/PIPController;->previewTopMargin:I

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 543
    goto :goto_1
.end method

.method public setSubWindowPosition(IIII)V
    .locals 1
    .param p1, "x0"    # I
    .param p2, "y0"    # I
    .param p3, "x1"    # I
    .param p4, "y1"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPosition(IIII)V

    .line 221
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController$RectInfo;->setPrevPositionUpdate()V

    .line 222
    return-void
.end method

.method public setSubWindowRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 254
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    div-float p1, v0, p1

    .line 257
    :cond_0
    iput p1, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowRatio:F

    .line 258
    return-void
.end method

.method public setVideoSize(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoSize"    # Ljava/lang/String;

    .prologue
    const v2, 0x3fe38e39

    const v1, 0x3faaaaab

    .line 225
    const-string v0, "1920x1088"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1920x1080"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 227
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    .line 249
    :goto_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setMinMaxSmallScreenSize()V

    .line 251
    return-void

    .line 228
    :cond_1
    const-string v0, "1280x720"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 230
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    goto :goto_0

    .line 231
    :cond_2
    const-string v0, "1280x960"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    const/4 v0, 0x7

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 233
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    goto :goto_0

    .line 234
    :cond_3
    const-string v0, "720x480"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 236
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    goto :goto_0

    .line 237
    :cond_4
    const-string v0, "640x480"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 239
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    goto :goto_0

    .line 240
    :cond_5
    const-string v0, "320x240"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 241
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 242
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    goto :goto_0

    .line 243
    :cond_6
    const-string v0, "176x144"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 244
    const/4 v0, 0x6

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    .line 245
    const v0, 0x3f9c71c7

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PIPController;->setSubWindowRatio(F)V

    goto :goto_0

    .line 247
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/PIPController;->mPreviewSize:I

    goto :goto_0
.end method

.method public showSmartZoomFocusView()V
    .locals 2

    .prologue
    .line 523
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 524
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 525
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mIsSmartZoomFocusViewShown:Z

    .line 528
    :cond_0
    return-void
.end method

.method public showSubWindowResizeHandler()V
    .locals 4

    .prologue
    .line 504
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->setSubWindowResizeHandlerPosition()V

    .line 506
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 507
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 508
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PIPController;->mIsResizeHandlerShown:Z

    .line 509
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mGet:Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    const-string v1, "com.lge.camera.command.HidePIPResizeHandler"

    const-wide/16 v2, 0x1388

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/controller/PIPController$PIPControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 512
    :cond_0
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1295
    iput-object v1, p0, Lcom/lge/camera/controller/PIPController;->vg:Landroid/view/ViewGroup;

    .line 1296
    iput-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSubWindowPosition:Lcom/lge/camera/controller/PIPController$RectInfo;

    .line 1297
    iput-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    .line 1298
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    invoke-virtual {v0}, Lcom/lge/camera/components/PIPResizeHandlerView;->unbind()V

    .line 1300
    iput-object v1, p0, Lcom/lge/camera/controller/PIPController;->mPIPResizeHandlerView:Lcom/lge/camera/components/PIPResizeHandlerView;

    .line 1302
    :cond_0
    return-void
.end method

.method public updateOrientation()V
    .locals 6

    .prologue
    .line 722
    iget-object v0, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    iget-object v1, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX0:I
    invoke-static {v1}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$100(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY0:I
    invoke-static {v2}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$300(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectX1:I
    invoke-static {v3}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$200(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/PIPController;->mSmartZoomFocusViewPositon:Lcom/lge/camera/controller/PIPController$RectInfo;

    # getter for: Lcom/lge/camera/controller/PIPController$RectInfo;->mRectY1:I
    invoke-static {v4}, Lcom/lge/camera/controller/PIPController$RectInfo;->access$400(Lcom/lge/camera/controller/PIPController$RectInfo;)I

    move-result v4

    invoke-direct {p0}, Lcom/lge/camera/controller/PIPController;->getDegree()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/components/SmartZoomFocusView;->setPositionAndUpdate(IIIII)V

    .line 727
    return-void
.end method
