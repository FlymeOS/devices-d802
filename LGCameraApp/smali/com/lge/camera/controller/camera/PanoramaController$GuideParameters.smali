.class Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;
.super Ljava/lang/Object;
.source "PanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/PanoramaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideParameters"
.end annotation


# instance fields
.field public mDegree:I

.field public mIndicatorHeight:I

.field public mLcdHeight:I

.field public mLcdWidth:I

.field public mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

.field public mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

.field public mPanoramaThumbHeight:I

.field public mPanoramaThumbMarginBottom:I

.field public mPanoramaThumbMarginLeft:I

.field public mPanoramaThumbWidth:I

.field public mPreviewPanelMarginBottom:I

.field public mPreviewPanelWidth:I

.field public mTextLayout:Landroid/widget/RelativeLayout;

.field public mTextMarginBottom:I

.field public mTextMarginLeft:I

.field final synthetic this$0:Lcom/lge/camera/controller/camera/PanoramaController;


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/camera/PanoramaController;IIIIIIIIIIIILandroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p2, "textMarginLeft"    # I
    .param p3, "textMarginBottom"    # I
    .param p4, "panoramaThumbWidth"    # I
    .param p5, "panoramaThumbHeight"    # I
    .param p6, "panoramaThumbMarginLeft"    # I
    .param p7, "panoramaThumbMarginBottom"    # I
    .param p8, "indicatorHeight"    # I
    .param p9, "previewPanelWidth"    # I
    .param p10, "previewPanelMarginBottom"    # I
    .param p11, "lcdWidth"    # I
    .param p12, "lcdHeight"    # I
    .param p13, "degree"    # I
    .param p14, "textLayout"    # Landroid/widget/RelativeLayout;
    .param p15, "lpGuideLayout"    # Landroid/widget/RelativeLayout$LayoutParams;
    .param p16, "lpTextLayout"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->this$0:Lcom/lge/camera/controller/camera/PanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    iput p2, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginLeft:I

    .line 582
    iput p3, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextMarginBottom:I

    .line 583
    iput p4, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbWidth:I

    .line 584
    iput p5, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbHeight:I

    .line 585
    iput p6, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginLeft:I

    .line 586
    iput p7, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPanoramaThumbMarginBottom:I

    .line 587
    iput p8, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mIndicatorHeight:I

    .line 588
    iput p9, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelWidth:I

    .line 589
    iput p10, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mPreviewPanelMarginBottom:I

    .line 590
    iput p11, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdWidth:I

    .line 591
    iput p12, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLcdHeight:I

    .line 592
    iput p13, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mDegree:I

    .line 593
    iput-object p14, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mTextLayout:Landroid/widget/RelativeLayout;

    .line 594
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpGuideLayout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 595
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/lge/camera/controller/camera/PanoramaController$GuideParameters;->mLpTextLayout:Landroid/widget/RelativeLayout$LayoutParams;

    .line 596
    return-void
.end method
