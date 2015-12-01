.class public abstract Lcom/lge/camera/controller/PreviewPanelController;
.super Lcom/lge/camera/controller/Controller;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;
.implements Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;
.implements Lcom/lge/camera/components/Switcher$OnSwitchListener;
.implements Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    }
.end annotation


# static fields
.field private static final ANI_CLOSE_STARTED:I = 0x2

.field private static final ANI_FINISHED:I = 0x3

.field private static final ANI_NONE:I = 0x0

.field private static final ANI_OPEN_STARTED:I = 0x1

.field private static PAUSE_RESUME_CHECK_DURATION:I = 0x0

.field public static final SUB_BUTTON_BOTTOM:I = 0x2

.field public static final SUB_BUTTON_MIDDLE:I = 0x1

.field public static final SUB_BUTTON_TOP:I


# instance fields
.field protected NAVI_MARGIN:I

.field private checkAreaOnTouch:Z

.field private mAlpha_value:I

.field public mAutoReviewBlockTouch:Z

.field private mButtonCheckTimer:Ljava/util/Timer;

.field private mDeleteThumbnailThread:Ljava/lang/Thread;

.field public mDoSnapRunnable:Ljava/lang/Runnable;

.field private mGalleryLaunching:Z

.field private mGalleryWindowAniState:I

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mHideQuickViewRunable:Ljava/lang/Runnable;

.field private mLastGalleryImage:Landroid/widget/ImageView;

.field protected mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

.field private mPrevTime:J

.field private mProcessInitDone:Z

.field private mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

.field private mQuickViewThumbLayout:Landroid/view/View;

.field protected mReleaseArea:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;",
            ">;"
        }
    .end annotation
.end field

.field private mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

.field private mReviewThumbnailLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mReviewThumbnailTouchListener:Landroid/view/View$OnTouchListener;

.field private mShutterBurstShot:Z

.field protected mShutterButton:Lcom/lge/camera/components/ShutterButton;

.field private mShutterButtonLongKey:Z

.field private mShutterButtonRunnable:Ljava/lang/Runnable;

.field private mShutterFocusLongKey:Z

.field private mSliding:Z

.field private mSnapshotOnContinuousFocus:Z

.field private mSnapshotOnIdle:Z

.field protected mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

.field protected mSubTouchButtonBottom:Landroid/widget/ImageView;

.field protected mSubTouchButtonMiddle:Landroid/widget/ImageView;

.field protected mSubTouchButtonTop:Landroid/widget/ImageView;

.field protected mSwitcher:Lcom/lge/camera/components/Switcher;

.field protected mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

.field private mThumbController:Lcom/lge/camera/components/ThumbnailController;

.field private mThumbImage:Landroid/graphics/Bitmap;

.field private mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mThumbUri:Landroid/net/Uri;

.field private mThumbnailLock:Ljava/lang/Object;

.field private mThumbnailThread:Ljava/lang/Thread;

.field private mTrashView:Lcom/lge/camera/components/RotateImageButton;

.field private mainBarAlpha_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2061
    const/16 v0, 0x3e8

    sput v0, Lcom/lge/camera/controller/PreviewPanelController;->PAUSE_RESUME_CHECK_DURATION:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/16 v1, 0xff

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 155
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 101
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 102
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 103
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 104
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 105
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 106
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 108
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 109
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 110
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 113
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    .line 114
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    .line 135
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 143
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 144
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 146
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 147
    iput v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    .line 148
    iput v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    .line 149
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 150
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 151
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    .line 152
    iput v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    .line 1226
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    .line 1666
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$5;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 2060
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    .line 2128
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    .line 2261
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2271
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$6;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

    .line 2277
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$7;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2286
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    .line 2287
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    .line 2288
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2289
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2290
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2292
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$8;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailTouchListener:Landroid/view/View$OnTouchListener;

    .line 2527
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2619
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$10;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHideQuickViewRunable:Ljava/lang/Runnable;

    .line 2740
    iput v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 3197
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 3198
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 3199
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    .line 3225
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$15;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$15;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    .line 3500
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z

    .line 156
    invoke-direct {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setLockConditionForMainButton(Z)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/PreviewPanelController;FF)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->checkTrashLocation(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/controller/PreviewPanelController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->deleteImageAndUpdateThumbnail()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    return-void
.end method

.method static synthetic access$1402(Lcom/lge/camera/controller/PreviewPanelController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z

    return p1
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/PreviewPanelController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/ThumbnailController;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PreviewPanelController;Landroid/view/View;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailDoClickAction(Landroid/view/View;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/PreviewPanelController;)Lcom/lge/camera/components/RotateImageView;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/PreviewPanelController;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method private checkAfOnCafContition()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 3626
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "manual"

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    if-nez v1, :cond_0

    .line 3641
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkAvailableCountForShutterButtonFocus(Z)Z
    .locals 6
    .param p1, "pressed"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1650
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return v0

    .line 1654
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 1655
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1656
    if-eqz p1, :cond_0

    .line 1657
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1658
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v0}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1659
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1663
    goto :goto_0
.end method

.method private checkFocusStateForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z
    .locals 6
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1784
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isContinuousFocusActivating()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_1

    .line 1788
    invoke-virtual {p1, v1}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1789
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0181

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1790
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnContinuousFocus = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1792
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1806
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 1792
    goto :goto_0

    .line 1796
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkAfOnCafContition()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    .line 1800
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnContinuousFocus = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1802
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1803
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->doFocusOnCaf()V

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1802
    goto :goto_2

    :cond_3
    move v1, v0

    .line 1806
    goto :goto_1
.end method

.method private checkForShutterButton(Lcom/lge/camera/components/ShutterButton;ZZ)Z
    .locals 5
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;
    .param p2, "useClick"    # Z
    .param p3, "pressed"    # Z

    .prologue
    const v4, 0x7f0d0181

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1810
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1811
    const-string v1, "CameraApp"

    const-string v2, "return by !checkMediator()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    :goto_0
    return v0

    .line 1814
    :cond_0
    if-nez p2, :cond_1

    .line 1815
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1816
    if-nez p3, :cond_1

    .line 1817
    const-string v2, "CameraApp"

    const-string v3, "stopTimerTask"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->stopTimerTask()V

    .line 1819
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->releaseShutterFocus()V

    .line 1820
    invoke-virtual {p1, v0}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1821
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1824
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDialogID()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1829
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "onShutterButtonClick return."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1833
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isOptionMenuShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1834
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideOptionMenu()V

    .line 1837
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 1841
    :cond_6
    if-eqz p2, :cond_7

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v2, :cond_8

    :cond_7
    if-nez p2, :cond_a

    if-eqz p3, :cond_a

    .line 1843
    :cond_8
    invoke-virtual {p1, v0}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1844
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1851
    :cond_9
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "return by enable false"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1845
    :cond_a
    if-nez p2, :cond_9

    if-nez p3, :cond_9

    .line 1846
    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    if-eqz v2, :cond_9

    .line 1847
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1848
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v0}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    :cond_b
    move v0, v1

    .line 1854
    goto/16 :goto_0
.end method

.method private checkLockConditionForMainButton()Z
    .locals 7

    .prologue
    .line 385
    const/4 v2, 0x0

    .line 388
    .local v2, "result":Z
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 390
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 391
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 392
    .local v1, "keyItem":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    const-string v3, "CameraApp"

    const-string v4, "Locked by key:%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v2, 0x1

    .line 399
    .end local v1    # "keyItem":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private checkNeedUpdateLastThumb()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1151
    const/4 v1, 0x0

    .line 1152
    .local v1, "result":Z
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "mode":Ljava/lang/String;
    const-string v4, "shotmode_free_panorama"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1154
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v4

    if-ne v4, v6, :cond_1

    move v1, v2

    .line 1158
    :cond_0
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNeedUpdateLastThumb mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    return v1

    :cond_1
    move v1, v3

    .line 1154
    goto :goto_0

    .line 1155
    :cond_2
    const-string v4, "shotmode_plane_panorama"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1156
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v4

    if-ne v4, v6, :cond_3

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private checkOutRange(Landroid/view/View;IFF)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 2115
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .line 2117
    .local v0, "releaseArea":Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget v2, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mTop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p4, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mBottom:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p4, v2

    if-lez v2, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return v1

    .line 2121
    :cond_1
    iget v2, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mLeft:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;->mRight:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_0

    .line 2125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkRecordingPauseAndResumePressTime()Z
    .locals 6

    .prologue
    .line 2064
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2065
    .local v0, "now":J
    iget-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2066
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Time is somthing wrong! now = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mPrevTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    .line 2069
    :cond_0
    iget-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    sub-long v2, v0, v2

    sget v4, Lcom/lge/camera/controller/PreviewPanelController;->PAUSE_RESUME_CHECK_DURATION:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 2070
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mPrevTime:J

    .line 2071
    const/4 v2, 0x1

    .line 2073
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkShotModeForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z
    .locals 6
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1733
    const-string v2, "shotmode_front_beauty"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCompleteProcessFrame()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return v0

    .line 1739
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1741
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1742
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 1743
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_0

    .line 1748
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkCurrentShotModeForModule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1752
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1753
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1755
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopPanorama()V

    .line 1756
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto :goto_0

    .line 1760
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 1762
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopPlanePanorama()V

    goto :goto_0

    .line 1766
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 1768
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFreePanorama()V

    goto/16 :goto_0

    .line 1772
    :cond_5
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    .line 1773
    invoke-virtual {p1, v0}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 1774
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0181

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1775
    const-string v2, "CameraApp"

    const-string v3, "mSnapshotOnIdle = true"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 1780
    goto/16 :goto_0
.end method

.method private checkTrashLocation(FF)Z
    .locals 8
    .param p1, "inputX"    # F
    .param p2, "inputY"    # F

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2445
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 2465
    :cond_1
    :goto_0
    return v4

    .line 2449
    :cond_2
    new-array v0, v7, [I

    .line 2450
    .local v0, "startPos":[I
    new-array v2, v7, [I

    .line 2452
    .local v2, "trashPos":[I
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v6, v0}, Lcom/lge/camera/components/RotateImageView;->getLocationOnScreen([I)V

    .line 2453
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6, v2}, Lcom/lge/camera/components/RotateImageButton;->getLocationOnScreen([I)V

    .line 2455
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 2456
    .local v3, "trashWidth":F
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v6}, Lcom/lge/camera/components/RotateImageButton;->getMeasuredHeight()I

    move-result v6

    int-to-float v1, v6

    .line 2458
    .local v1, "trashHeight":F
    aget v6, v0, v5

    int-to-float v6, v6

    add-float/2addr v6, p1

    aget v7, v2, v5

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    aget v6, v0, v5

    int-to-float v6, v6

    add-float/2addr v6, p1

    aget v7, v2, v5

    int-to-float v7, v7

    add-float/2addr v7, v3

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_3

    aget v6, v0, v4

    int-to-float v6, v6

    add-float/2addr v6, p2

    aget v7, v2, v4

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    aget v6, v0, v4

    int-to-float v6, v6

    add-float/2addr v6, p2

    aget v7, v2, v4

    int-to-float v7, v7

    add-float/2addr v7, v1

    cmpg-float v6, v6, v7

    if-lez v6, :cond_1

    :cond_3
    move v4, v5

    .line 2465
    goto :goto_0
.end method

.method private clearSettingMenuAndSubMenuForReviewButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2096
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 2098
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 2099
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 2112
    :cond_1
    :goto_0
    return-void

    .line 2101
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_3

    .line 2102
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 2103
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionDragDrop"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 2105
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_4

    .line 2106
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 2107
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_0

    .line 2109
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2110
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0
.end method

.method private deleteImageAndUpdateThumbnail()V
    .locals 1

    .prologue
    .line 2869
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2870
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$14;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewPanelController$14;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    .line 2947
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2948
    return-void
.end method

.method private doCamcorderShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 8
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1946
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenu()V

    .line 1948
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 1950
    :pswitch_0
    const-string v1, "CameraApp"

    const-string v2, "VideoState = VIDEO_STATE_IDLE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1952
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a01a7

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0

    .line 1955
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1956
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1958
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1959
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->restoreSubWindow()V

    .line 1960
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1963
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 1966
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1967
    .local v0, "videoResolution":Ljava/lang/String;
    const-string v1, "recordmode_live_effect"

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_record_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1969
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveEffectPreviewOnDevice(I)Ljava/lang/String;

    move-result-object v0

    .line 1975
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/MmsProperties;->getAttachVideoMinimumSize(Ljava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_5

    .line 1979
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#########  aileen minRequireSpace : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lge/camera/properties/MmsProperties;->getAttachVideoMinimumSize(Ljava/lang/String;Landroid/content/ContentResolver;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "getRequestedVideoSizeLimit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a0251

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 1988
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1989
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 1990
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 1991
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1992
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto/16 :goto_0

    .line 1997
    .end local v0    # "videoResolution":Ljava/lang/String;
    :cond_5
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Here is shutterclick : storage is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v1

    if-eqz v1, :cond_6

    .line 2000
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->showStorageHint(I)V

    .line 2001
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 2002
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 2003
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v7}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 2004
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 2005
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto/16 :goto_0

    .line 2009
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StartRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 2011
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 2013
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6, v7}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;ZZ)V

    .line 2014
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v6}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 2015
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/AppControlUtil;->BlockAlarmInRecording(Landroid/app/Activity;I)V

    .line 2017
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StartRecording"

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getStartRecordingSoundDelay()I

    move-result v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 2022
    :pswitch_1
    const-string v1, "CameraApp"

    const-string v2, "VIDEO_STATE_RECORDING"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2024
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkRecordingPauseAndResumePressTime()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAvailableResumeVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2026
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRecordedLengthTooShort()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2027
    const-string v1, "CameraApp"

    const-string v2, "Ignore stop recording request. It\'s too short."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2030
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.PauseRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2034
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRecordedLengthTooShort()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2035
    const-string v1, "CameraApp"

    const-string v2, "Ignore stop recording request. It\'s too short."

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2037
    :cond_9
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.StopRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2043
    :pswitch_2
    const-string v1, "CameraApp"

    const-string v2, "VIDEO_STATE_PAUSE"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2044
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkRecordingPauseAndResumePressTime()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2045
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ResumeRecording"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2051
    :pswitch_3
    const-string v1, "CameraApp"

    const-string v2, "VIDEO_STATE_NO_REACTION"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1948
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doCameraShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 9
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1858
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 1859
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 1860
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 1861
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 1863
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v2, :cond_0

    .line 1864
    invoke-virtual {p0, p1, v7}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 1866
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 1867
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    .line 1942
    :goto_0
    return-void

    .line 1871
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1872
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1873
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 1879
    :cond_2
    :goto_1
    const-string v2, "0"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1881
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 1882
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    goto :goto_0

    .line 1875
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearScreen()V

    goto :goto_1

    .line 1886
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1890
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1891
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1897
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1898
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->restoreSubWindow()V

    .line 1899
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1902
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "flashMode":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportGuideFlash()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "on"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_smart_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1906
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getIAFlashStatus()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v8, :cond_6

    .line 1909
    const-string v2, "CameraApp"

    const-string v3, "doFocus IA mode: Flash on or auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1911
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 1940
    :cond_6
    :goto_3
    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterFocusLongKey(Z)V

    .line 1941
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.DoCapture"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1893
    .end local v0    # "flashMode":Ljava/lang/String;
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1894
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7, v6}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_2

    .line 1913
    .restart local v0    # "flashMode":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportGuideFlash()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "not found"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "0"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v6, :cond_6

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v2

    if-eq v2, v8, :cond_6

    .line 1923
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1925
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1926
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1927
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v2, "1"

    const-string v3, "is-lowlight"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1928
    const-string v2, "CameraApp"

    const-string v3, "doFocus : Flash auto and is-lowlight = 1"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1930
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    goto/16 :goto_3

    .line 1934
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_9
    const-string v2, "CameraApp"

    const-string v3, "doFocus : Flash on or auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1936
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    goto/16 :goto_3
.end method

.method private doTouchActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 2161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2182
    :goto_0
    return v2

    .line 2163
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2168
    const-string v0, "CameraApp"

    const-string v1, "press no button"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2165
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 2173
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2176
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 2161
    :sswitch_data_0
    .sparse-switch
        0x7f0d0185 -> :sswitch_0
        0x7f0d0189 -> :sswitch_1
    .end sparse-switch

    .line 2163
    :pswitch_data_0
    .packed-switch 0x7f02047b
        :pswitch_0
    .end packed-switch

    .line 2173
    :sswitch_data_1
    .sparse-switch
        0x7f02048c -> :sswitch_2
        0x7f020493 -> :sswitch_2
    .end sparse-switch
.end method

.method private doTouchActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2186
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    if-nez v0, :cond_1

    .line 2216
    :cond_0
    :goto_0
    return v4

    .line 2190
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2192
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    const v1, 0x7f02047b

    if-ne v0, v1, :cond_0

    .line 2196
    const-string v0, "CameraApp"

    const-string v1, "out range!!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2198
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    goto :goto_0

    .line 2203
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->checkOutRange(Landroid/view/View;IFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2210
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2211
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    goto :goto_0

    .line 2190
    :sswitch_data_0
    .sparse-switch
        0x7f0d0185 -> :sswitch_0
        0x7f0d0189 -> :sswitch_1
    .end sparse-switch

    .line 2207
    :sswitch_data_1
    .sparse-switch
        0x7f02048c -> :sswitch_2
        0x7f020493 -> :sswitch_2
    .end sparse-switch
.end method

.method private doTouchActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2220
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    if-nez v0, :cond_0

    .line 2221
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->checkAreaOnTouch:Z

    .line 2258
    :goto_0
    return v3

    .line 2224
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2226
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2228
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2229
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.TakePictureInRecording"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2234
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackgroundResource()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 2241
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2242
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2244
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "VIDEO_STATE_RECORDING"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isRecordedLengthTooShort()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2246
    const-string v0, "CameraApp"

    const-string v1, "Ignore stop recording request. It\'s too short."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    goto :goto_0

    .line 2236
    :sswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2237
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->playSoundEffect(I)V

    .line 2238
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ResetFreePanorama"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 2249
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenu()V

    .line 2250
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.StopRecording"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto :goto_1

    .line 2224
    :sswitch_data_0
    .sparse-switch
        0x7f0d0185 -> :sswitch_0
        0x7f0d0189 -> :sswitch_1
    .end sparse-switch

    .line 2226
    :pswitch_data_0
    .packed-switch 0x7f02047b
        :pswitch_0
    .end packed-switch

    .line 2234
    :sswitch_data_1
    .sparse-switch
        0x7f02048c -> :sswitch_2
        0x7f020493 -> :sswitch_3
    .end sparse-switch
.end method

.method private galleryWindowViewClose()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v7, 0x8

    .line 2951
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d009e

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2952
    .local v2, "galleryWindowViewImage":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 2953
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2955
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d009b

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2956
    .local v1, "galleryWindowView":Landroid/view/View;
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2958
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d009c

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2959
    .local v0, "blackCover":Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2961
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d009f

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2963
    .local v3, "lastGalleryImage":Landroid/widget/ImageView;
    invoke-static {v3}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 2964
    iput v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 2965
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v9}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2967
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v5, :cond_0

    .line 2968
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v5, v8}, Lcom/lge/camera/components/RotateImageView;->setPressed(Z)V

    .line 2971
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2972
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2973
    .local v4, "shotMode":Ljava/lang/String;
    const-string v5, "shotmode_front_beauty"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "shotmode_main_beauty"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2975
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v9}, Lcom/lge/camera/ControllerFunction;->showBeautyshotController(Z)V

    .line 2978
    .end local v4    # "shotMode":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private getLastVideoThumbnail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    .line 1117
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1119
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1120
    .local v1, "query":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    .line 1122
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1123
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 1125
    .local v5, "order":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1126
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1127
    const/4 v0, 0x0

    .line 1147
    :cond_0
    :goto_0
    return-object v0

    .line 1130
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1131
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1132
    const-string v0, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getLastVideoThumbnail: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1135
    .local v10, "id":J
    invoke-static {v6, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1142
    if-eqz v7, :cond_0

    .line 1143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1144
    const/4 v7, 0x0

    goto :goto_0

    .line 1142
    .end local v10    # "id":J
    :cond_2
    if-eqz v7, :cond_3

    .line 1143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1144
    const/4 v7, 0x0

    .line 1147
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1137
    :catch_0
    move-exception v8

    .line 1138
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    if-eqz v7, :cond_3

    .line 1143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1144
    const/4 v7, 0x0

    goto :goto_1

    .line 1139
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 1140
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1142
    if-eqz v7, :cond_3

    .line 1143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1144
    const/4 v7, 0x0

    goto :goto_1

    .line 1142
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1143
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1144
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method private isLockDuringMediaScanning()Z
    .locals 2

    .prologue
    .line 3408
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMediaScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3409
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0077

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 3410
    const/4 v0, 0x1

    .line 3412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reviewThumbnailDoClickAction(Landroid/view/View;Z)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "longKey"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2470
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getBeautyshotProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2524
    :cond_0
    :goto_0
    return v0

    .line 2482
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2484
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    if-nez v2, :cond_0

    .line 2488
    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    if-nez v2, :cond_6

    .line 2489
    if-nez p2, :cond_5

    .line 2495
    const-string v2, "CameraApp"

    const-string v3, "goto gallery"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2496
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getTimeMachinePictures()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getRefocusPictures()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2498
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    .line 2499
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setExitIgnoreDuringSaving(Z)V

    .line 2500
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showSavingProgressDialog()V

    goto :goto_0

    .line 2503
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v1}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2506
    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2510
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2511
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ShowGallery"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    move v0, v1

    .line 2512
    goto :goto_0

    .line 2508
    :cond_3
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    goto :goto_1

    :cond_4
    move v0, v1

    .line 2515
    goto :goto_0

    .line 2517
    :cond_5
    const-string v0, "CameraApp"

    const-string v2, "Gallery key long key"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewWindow(ZJ)Z

    move-result v0

    goto :goto_0

    .line 2521
    :cond_6
    const-string v1, "CameraApp"

    const-string v2, "Gallery is launching already."

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2482
    :pswitch_data_0
    .packed-switch 0x7f0d0192
        :pswitch_0
    .end packed-switch
.end method

.method private setCamcorderShutterButtonImage(ZI)I
    .locals 8
    .param p1, "buttonEnable"    # Z
    .param p2, "degree"    # I

    .prologue
    const v7, 0x7f020480

    const v6, 0x7f02004e

    const v5, 0x7f0d0182

    const/16 v4, 0x8

    const v3, 0x7f0d0181

    .line 554
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    .line 555
    .local v1, "videoState":I
    const/4 v0, 0x1

    .line 557
    .local v0, "enable":Z
    if-eqz p1, :cond_6

    .line 558
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 559
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f02047f

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 591
    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonBgOrientation(IZ)I

    move-result v2

    return v2

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f020483

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 566
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 567
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 569
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 571
    :cond_3
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 573
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 575
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 578
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 580
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 581
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 585
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 588
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 589
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCameraShutterButtonImage(ZI)I
    .locals 12
    .param p1, "buttonEnable"    # Z
    .param p2, "degree"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 470
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0181

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 471
    .local v0, "mainButton":Landroid/view/View;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0180

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 472
    .local v1, "mainButtonBg":Landroid/view/View;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return v4

    .line 476
    :cond_1
    const v2, 0x7f02047e

    .line 477
    .local v2, "mainButtonResId":I
    const v3, 0x7f0a0326

    .line 479
    .local v3, "shutterDesId":I
    if-eqz p1, :cond_d

    .line 480
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPanoramaUpdatebutton()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 481
    const v2, 0x7f020483

    .line 482
    const v3, 0x7f0a0338

    .line 547
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 548
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 550
    invoke-direct {p0, p2, v8}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonBgOrientation(IZ)I

    move-result v4

    goto :goto_0

    .line 483
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isSynthesisInProgress()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 484
    const v2, 0x7f020058

    .line 485
    const v3, 0x7f0a0338

    goto :goto_1

    .line 486
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_plane_panorama"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 488
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v5

    if-ne v5, v11, :cond_5

    .line 489
    const v2, 0x7f020483

    .line 490
    const v3, 0x7f0a0338

    .line 491
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 492
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v5

    if-eq v5, v9, :cond_6

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v5

    if-eq v5, v8, :cond_6

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v5

    if-ne v5, v10, :cond_7

    .line 495
    :cond_6
    const v2, 0x7f020058

    .line 496
    const v3, 0x7f0a0338

    .line 497
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 499
    :cond_7
    const v2, 0x7f02047e

    .line 500
    const v3, 0x7f0a0326

    .line 501
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 503
    :cond_8
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_free_panorama"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 505
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v5

    if-eq v5, v8, :cond_9

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v5

    if-eq v5, v9, :cond_9

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v5

    if-ne v5, v10, :cond_a

    .line 508
    :cond_9
    const v2, 0x7f020058

    .line 509
    const v3, 0x7f0a0338

    .line 510
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 511
    :cond_a
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v4

    if-ne v4, v11, :cond_b

    .line 512
    const v2, 0x7f020483

    .line 513
    const v3, 0x7f0a0338

    .line 514
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 516
    :cond_b
    const v2, 0x7f02047e

    .line 517
    const v3, 0x7f0a0326

    .line 518
    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1

    .line 521
    :cond_c
    const v2, 0x7f02047e

    .line 522
    const v3, 0x7f0a0326

    goto/16 :goto_1

    .line 525
    :cond_d
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 526
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPanoramaUpdatebutton()Z

    move-result v4

    if-nez v4, :cond_e

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isSynthesisInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 527
    :cond_e
    const v2, 0x7f020058

    .line 528
    const v3, 0x7f0a0338

    goto/16 :goto_1

    .line 530
    :cond_f
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_plane_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 532
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v4

    if-lt v4, v10, :cond_2

    .line 533
    const v2, 0x7f020058

    .line 534
    const v3, 0x7f0a0338

    goto/16 :goto_1

    .line 536
    :cond_10
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_free_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v4

    if-lt v4, v9, :cond_11

    .line 539
    const v2, 0x7f020058

    .line 540
    const v3, 0x7f0a0338

    goto/16 :goto_1

    .line 542
    :cond_11
    const v2, 0x7f020055

    .line 543
    const v3, 0x7f0a0326

    goto/16 :goto_1
.end method

.method private setGalleryWindowImage(Landroid/net/Uri;I)V
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "degrees"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 2638
    const-string v8, "CameraApp"

    const-string v9, "Load captured image:%s, degrees:%d"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2640
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v8, :cond_0

    .line 2734
    :goto_0
    return-void

    .line 2644
    :cond_0
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2645
    :try_start_0
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v10, 0x7f0d009f

    invoke-interface {v8, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 2647
    .local v5, "lastGalleryImage":Landroid/widget/ImageView;
    const/4 v6, 0x0

    .line 2648
    .local v6, "resizeThumbBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 2649
    .local v4, "imageWidth":I
    const/4 v3, 0x0

    .line 2650
    .local v3, "imageHeight":I
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 2652
    .local v0, "dstSize":[I
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2653
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2654
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2657
    :try_start_1
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2658
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2659
    .local v7, "thumbBmp":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    aget v8, v0, v8

    const/4 v10, 0x1

    aget v10, v0, v10

    const/4 v11, 0x1

    invoke-static {v7, v8, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2661
    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2662
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2664
    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v10

    if-eq v8, v10, :cond_1

    .line 2667
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2674
    .end local v7    # "thumbBmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2676
    new-instance v2, Ljava/lang/Thread;

    new-instance v8, Lcom/lge/camera/controller/PreviewPanelController$11;

    invoke-direct {v8, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$11;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)V

    invoke-direct {v2, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2733
    .local v2, "galleryQuickViewImageThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 2671
    .end local v2    # "galleryQuickViewImageThread":Ljava/lang/Thread;
    :catch_0
    move-exception v1

    .line 2672
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "CameraApp"

    const-string v10, "setGalleryWindowImage exception : "

    invoke-static {v8, v10, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2674
    .end local v0    # "dstSize":[I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "imageHeight":I
    .end local v4    # "imageWidth":I
    .end local v5    # "lastGalleryImage":Landroid/widget/ImageView;
    .end local v6    # "resizeThumbBmp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v8
.end method

.method private setLockConditionForMainButton(Z)V
    .locals 1
    .param p1, "bSoundLock"    # Z

    .prologue
    .line 355
    const-string v0, "StorageControllerLockKey"

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->registerLockConditionForMainButton(Ljava/lang/String;)V

    .line 356
    if-eqz p1, :cond_0

    .line 357
    const-string v0, "SoundControllerLockKey"

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->registerLockConditionForMainButton(Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method private setMainButtonContentDescription()V
    .locals 4

    .prologue
    const v3, 0x7f0a0335

    .line 3587
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_1

    .line 3588
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0326

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3605
    :cond_0
    :goto_0
    return-void

    .line 3591
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    .line 3592
    .local v0, "videoState":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3594
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a0337

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3596
    :cond_3
    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3598
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3600
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 3601
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setShutterButtonBgOrientation(IZ)I
    .locals 10
    .param p1, "degree"    # I
    .param p2, "enable"    # Z

    .prologue
    const v9, 0x7f0d0180

    const/16 v8, 0x10e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 595
    const v0, 0x7f02047c

    .line 596
    .local v0, "bgResId":I
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0d017e

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 597
    .local v3, "rl":Lcom/lge/camera/components/RotateLayout;
    if-nez v3, :cond_0

    .line 648
    :goto_0
    return v4

    .line 601
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v1

    .line 602
    .local v1, "convDegree":I
    rem-int/lit16 v6, v1, 0xb4

    if-nez v6, :cond_2

    move v2, v5

    .line 603
    .local v2, "isHorizontal":Z
    :goto_1
    sparse-switch v1, :sswitch_data_0

    .line 624
    :goto_2
    if-eqz v2, :cond_6

    .line 625
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "on"

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_smart_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 627
    const v0, 0x7f020481

    .line 641
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-ne v4, v5, :cond_1

    if-nez p2, :cond_1

    .line 642
    if-eqz v2, :cond_8

    .line 643
    const v0, 0x7f02000b

    :cond_1
    :goto_4
    move v4, v0

    .line 648
    goto :goto_0

    .end local v2    # "isHorizontal":Z
    :cond_2
    move v2, v4

    .line 602
    goto :goto_1

    .line 606
    .restart local v2    # "isHorizontal":Z
    :sswitch_0
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 607
    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 611
    :goto_5
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9, v4, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto :goto_2

    .line 609
    :cond_3
    invoke-virtual {v3, v8}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_5

    .line 615
    :sswitch_1
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 616
    invoke-virtual {v3, v4}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 620
    :goto_6
    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v7, 0xb4

    invoke-interface {v6, v9, v7, v4}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto :goto_2

    .line 618
    :cond_4
    invoke-virtual {v3, v8}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_6

    .line 629
    :cond_5
    const v0, 0x7f02047c

    goto :goto_3

    .line 633
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "on"

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_smart_mode"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 635
    const v0, 0x7f020482

    goto :goto_3

    .line 637
    :cond_7
    const v0, 0x7f02047d

    goto :goto_3

    .line 645
    :cond_8
    const v0, 0x7f020012

    goto :goto_4

    .line 603
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private setSubButtonContentDescription(Landroid/view/View;I)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    .line 3570
    sparse-switch p2, :sswitch_data_0

    .line 3584
    :goto_0
    return-void

    .line 3572
    :sswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0280

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3575
    :sswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0334

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3578
    :sswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0a0336

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3570
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f02047b -> :sswitch_0
        0x7f02048c -> :sswitch_2
        0x7f020493 -> :sswitch_1
    .end sparse-switch
.end method

.method private setSubButtonVisibilityWithTouchBotton(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3609
    packed-switch p1, :pswitch_data_0

    .line 3623
    :goto_0
    :pswitch_0
    return-void

    .line 3611
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0185

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3614
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0187

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3617
    :pswitch_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0189

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 3609
    :pswitch_data_0
    .packed-switch 0x7f0d0184
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public audioCallbackTakePicture()V
    .locals 6

    .prologue
    .line 3416
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3420
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_front_beauty"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_main_beauty"

    invoke-interface {v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_4

    .line 3432
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRotateDialogVisible()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3433
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 3470
    :cond_3
    :goto_0
    return-void

    .line 3426
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3427
    const-string v1, "CameraApp"

    const-string v2, "onAudioRecogResultCallback-return : Submenu state is not off!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3428
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0

    .line 3437
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStorageState()I

    move-result v1

    if-eqz v1, :cond_7

    .line 3438
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    .line 3439
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 3441
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0

    .line 3445
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0180

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 3446
    .local v0, "button":Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_8

    .line 3448
    const-string v1, "CameraApp"

    const-string v2, "sound recognize : take a picture!!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$17;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewPanelController$17;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 3458
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$18;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/PreviewPanelController$18;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Lcom/lge/camera/components/ShutterButton;)V

    const-wide/16 v4, 0x190

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 3467
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    goto :goto_0
.end method

.method public clearSettingMenuAndSubMenu()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2077
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2079
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 2081
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSubMenuMode(I)V

    .line 2082
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2083
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "showAll"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2084
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.RemoveSettingMenu"

    invoke-interface {v1, v2, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2093
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    return-void

    .line 2085
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    .line 2086
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_video_record_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2087
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->restoreLiveEffectSubMenu()V

    .line 2089
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearQuickFunctionSubMenu()V

    .line 2090
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    goto :goto_0
.end method

.method public closeGalleryQuickView(Z)V
    .locals 3
    .param p1, "deleteImage"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2415
    if-nez p1, :cond_0

    .line 2416
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2417
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    .line 2418
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2419
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    const v1, 0x7f0200e7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2422
    :cond_0
    invoke-virtual {p0, v2, p1}, Lcom/lge/camera/controller/PreviewPanelController;->showGalleryQuickViewAnimation(ZZ)V

    .line 2423
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailTouchActionUp()V

    .line 2424
    return-void
.end method

.method public doCameraShutterButtonFocus(Z)V
    .locals 6
    .param p1, "pressed"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1562
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->checkAvailableCountForShutterButtonFocus(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 1647
    :cond_1
    :goto_0
    return-void

    .line 1568
    :cond_2
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus : doFocus, pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    if-eqz p1, :cond_6

    .line 1570
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1571
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1572
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 1577
    :cond_3
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1581
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 1582
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 1583
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_0

    .line 1574
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearScreen()V

    goto :goto_1

    .line 1585
    :cond_5
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    .line 1586
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonReleaseImmediately(Z)V

    .line 1587
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.DoCapture"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_0

    .line 1592
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1596
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopByUserAction()Z

    .line 1634
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-eq v0, v4, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFocusState()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1638
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 1639
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->doFocus(Z)V

    .line 1640
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 1643
    :cond_8
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1644
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1645
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto/16 :goto_0

    .line 1597
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1599
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isShutterButtonClicked()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1600
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1601
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1602
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto :goto_2

    .line 1604
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    .line 1607
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1608
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1609
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto/16 :goto_2

    .line 1610
    :cond_b
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-lt v0, v5, :cond_c

    .line 1613
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-eq v0, v5, :cond_7

    .line 1614
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1615
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1616
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    goto/16 :goto_2

    .line 1619
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1620
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1621
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showOsd()V

    .line 1622
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1623
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_front_beauty"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_main_beauty"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1629
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showBeautyShotBarForNewUx(Z)V

    goto/16 :goto_2
.end method

.method public enableCommand(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const v5, 0x7f0d0187

    const v4, 0x7f0d0186

    const/4 v3, 0x1

    .line 707
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableCommand : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwithcerEnable(Z)V

    .line 714
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 715
    if-eqz p1, :cond_2

    .line 716
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable()V

    .line 724
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0184

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 725
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0185

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 728
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 731
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 738
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0188

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 739
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0189

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 742
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0192

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 746
    :cond_1
    return-void

    .line 719
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    goto :goto_0

    .line 733
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 734
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method public gestureCallbackTakePicture()V
    .locals 3

    .prologue
    .line 3473
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shotmode_dual_camera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3498
    :cond_0
    :goto_0
    return-void

    .line 3481
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0180

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    .line 3482
    .local v0, "button":Lcom/lge/camera/components/ShutterButton;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 3483
    const-string v1, "CameraApp"

    const-string v2, "hand gesture recognize : take a picture!!!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$19;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/PreviewPanelController$19;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Lcom/lge/camera/components/ShutterButton;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3493
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3494
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    goto :goto_0
.end method

.method public getLastImageThumbnail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 14
    .param p1, "bucketId"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    const/4 v9, 0x0

    .line 1082
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1084
    .local v6, "baseUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v12, "1"

    invoke-virtual {v0, v4, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 1085
    .local v1, "query":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v13

    const/4 v0, 0x1

    const-string v4, "orientation"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "datetaken"

    aput-object v4, v2, v0

    .line 1087
    .local v2, "projection":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1089
    .local v3, "selection":Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 1091
    .local v5, "order":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1092
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v9

    .line 1113
    :cond_0
    :goto_0
    return-object v0

    .line 1096
    :cond_1
    :try_start_0
    const-string v0, "CameraApp"

    const-string v4, "getContentResolver start"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1098
    const-string v0, "CameraApp"

    const-string v4, "getContentResolver end"

    invoke-static {v0, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1100
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1101
    .local v10, "id":J
    invoke-static {v6, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1108
    if-eqz v7, :cond_0

    .line 1109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1110
    const/4 v7, 0x0

    goto :goto_0

    .line 1108
    .end local v10    # "id":J
    :cond_2
    if-eqz v7, :cond_3

    .line 1109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1110
    const/4 v7, 0x0

    :cond_3
    :goto_1
    move-object v0, v9

    .line 1113
    goto :goto_0

    .line 1103
    :catch_0
    move-exception v8

    .line 1104
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1108
    if-eqz v7, :cond_3

    .line 1109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1110
    const/4 v7, 0x0

    goto :goto_1

    .line 1105
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v8

    .line 1106
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "CameraApp"

    const-string v4, "cursor error "

    invoke-static {v0, v4, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1108
    if-eqz v7, :cond_3

    .line 1109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1110
    const/4 v7, 0x0

    goto :goto_1

    .line 1108
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 1109
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1110
    const/4 v7, 0x0

    :cond_4
    throw v0
.end method

.method public getMainBarAlphaValue()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    return v0
.end method

.method public getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;
    .locals 4
    .param p1, "bucketId"    # Ljava/lang/String;
    .param p2, "inclusion"    # I

    .prologue
    .line 1065
    const/4 v0, 0x0

    .line 1066
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 1067
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->getLastImageThumbnail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1068
    if-eqz v0, :cond_0

    .line 1069
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1077
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMostRecentThumbnailUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-object v0

    .line 1072
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->getLastVideoThumbnail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1073
    if-eqz v0, :cond_0

    .line 1074
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public getMostRecentThumbnailUri(ZI)Landroid/net/Uri;
    .locals 5
    .param p1, "isUseLinkedThumbnailList"    # Z
    .param p2, "inclusion"    # I

    .prologue
    .line 1040
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId()Ljava/lang/String;

    move-result-object v0

    .line 1041
    .local v0, "bucketId":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1042
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 1061
    :cond_1
    :goto_0
    return-object v1

    .line 1045
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1046
    const/4 v1, 0x0

    goto :goto_0

    .line 1049
    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    .line 1050
    .local v1, "integratedUri":Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 1051
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_storage"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isInternalMemoryOnly()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1053
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1056
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId(I)Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-virtual {p0, v0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbController()Lcom/lge/camera/components/ThumbnailController;
    .locals 1

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    return-object v0
.end method

.method public getThumbnailAndUpdateButton()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 886
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 887
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "getThumbnailAndUpdateButton() return mThumbController:%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lcom/lge/camera/util/AppControlUtil;->checkGuestModeAndAppDisabled(Landroid/content/ContentResolver;ZI)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 895
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureImageUtil = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/lge/camera/util/SecureImageUtil;->checkSecureLockUriList(Landroid/app/Activity;I)V

    .line 903
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->isSecureLockUriListEmpty(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 904
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 905
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 907
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_3

    .line 908
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setSecureDefaultImage(Z)V

    .line 928
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    goto :goto_0

    .line 912
    :cond_4
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriListSize(I)I

    move-result v0

    .line 914
    .local v0, "secureLockImageListSize":I
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/SecureImageUtil;->getSecureLockUriList(I)Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 920
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 922
    .local v1, "temp":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 923
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 925
    :cond_5
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 931
    .end local v0    # "secureLockImageListSize":I
    .end local v1    # "temp":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v2, :cond_7

    .line 932
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setSecureDefaultImage(Z)V

    .line 936
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 939
    :cond_8
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V

    goto/16 :goto_0

    .line 941
    :cond_9
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V

    goto/16 :goto_0
.end method

.method public getThumbnailAndUpdateButton(I)V
    .locals 1
    .param p1, "inclusion"    # I

    .prologue
    .line 946
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$1;

    invoke-direct {v0, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController;I)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    .line 1035
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1036
    return-void
.end method

.method public hideLiveSnapshotButton()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 853
    invoke-virtual {p0, v0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 854
    return-void
.end method

.method public hideRecoridngStopButton()V
    .locals 2

    .prologue
    .line 867
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 868
    return-void
.end method

.method public initController()V
    .locals 7

    .prologue
    const v6, 0x7f0d0184

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f09001d

    invoke-static {v0, v3}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    .line 179
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d00ca

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 181
    invoke-direct {p0, v6, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 182
    const v0, 0x7f0d0186

    invoke-direct {p0, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 183
    const v0, 0x7f0d0188

    invoke-direct {p0, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 185
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018a

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018d

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018b

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Switcher;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 189
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 216
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0180

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ShutterButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 217
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V

    .line 218
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setFocusable(Z)V

    .line 220
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    .line 221
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonVisible(Z)V

    .line 224
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0181

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 225
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018e

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 226
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018f

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 228
    const-string v0, "CameraApp"

    const-string v3, "[PreviewPanelController] initController"

    invoke-static {v0, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 231
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0186

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 232
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0188

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageButton;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 234
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0185

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 235
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0187

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 236
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0189

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 238
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->showSubButtonInit(Z)V

    .line 240
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0192

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 242
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReviewThumbnailTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    new-instance v0, Lcom/lge/camera/components/ThumbnailController;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/lge/camera/components/ThumbnailController;-><init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;Z)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->initReleaseArea()V

    .line 250
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    .line 251
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 252
    iget v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainBarAlpha(I)V

    .line 253
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 254
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    .line 255
    return-void

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_0

    .line 193
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/Switcher;->setSwitch(Z)V

    .line 194
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/components/Switcher;->setSwitcherImage(II)V

    .line 195
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/Switcher;->setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 193
    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018a

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018d

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0190

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SwitcherLeverVertical;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 203
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 204
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    goto/16 :goto_0

    .line 206
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_0

    .line 207
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitch(Z)V

    .line 208
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitcherImage(II)V

    .line 210
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, p0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setOnSwitchLeverListener(Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;)V

    .line 211
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 207
    goto :goto_2
.end method

.method public initReleaseArea()V
    .locals 6

    .prologue
    .line 331
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    .line 332
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    const v1, 0x7f09002f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v2

    const v1, 0x7f090031

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v3

    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v4

    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 337
    .local v0, "ra":Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 338
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .end local v0    # "ra":Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    const v1, 0x7f090037

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v2

    const v1, 0x7f090039

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v3

    const v1, 0x7f090038

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v4

    const v1, 0x7f09003a

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 342
    .restart local v0    # "ra":Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 343
    new-instance v0, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;

    .end local v0    # "ra":Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v2

    const v1, 0x7f090041

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v3

    const v1, 0x7f090040

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v4

    const v1, 0x7f090042

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->getPixelFromDimens(I)I

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;-><init>(Lcom/lge/camera/controller/PreviewPanelController;IIII)V

    .line 347
    .restart local v0    # "ra":Lcom/lge/camera/controller/PreviewPanelController$ReleaseArea;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 348
    return-void
.end method

.method public isGalleryLaunching()Z
    .locals 1

    .prologue
    .line 2268
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    return v0
.end method

.method public isPressedShutterButton()Z
    .locals 2

    .prologue
    .line 876
    const/4 v0, 0x0

    .line 878
    .local v0, "result":Z
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 879
    const/4 v0, 0x1

    .line 882
    :cond_0
    return v0
.end method

.method public isShutterButtonEnable()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0}, Lcom/lge/camera/components/ShutterButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShutterButtonLongKey()Z
    .locals 1

    .prologue
    .line 3202
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    return v0
.end method

.method public isShutterFocusLongKey()Z
    .locals 1

    .prologue
    .line 3206
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    return v0
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    .line 3503
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSliding:Z

    return v0
.end method

.method public isSwitcherLeverEnable()Z
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0190

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SwitcherLeverVertical;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->isEnabled()Z

    move-result v0

    .line 756
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwitcherLeverPressed()Z
    .locals 1

    .prologue
    .line 3652
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->isSwitcherPressed()Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3061
    const-string v1, "CameraApp"

    const-string v2, "onDestory-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3063
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 3065
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3066
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 3067
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 3070
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_1

    .line 3071
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3072
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3073
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3075
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 3076
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v1, :cond_2

    .line 3077
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v1}, Lcom/lge/camera/components/ThumbnailController;->close()V

    .line 3079
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 3081
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 3082
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3083
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mReleaseArea:Ljava/util/ArrayList;

    .line 3085
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 3086
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 3087
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    .line 3089
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_5

    .line 3090
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonListener;)V

    .line 3091
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/ShutterButton;->setOnShutterButtonLongPressListener(Lcom/lge/camera/components/ShutterButton$OnShutterButtonLongPressListener;)V

    .line 3092
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/ShutterButton;->unbind()V

    .line 3093
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    .line 3095
    :cond_5
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v1, :cond_6

    .line 3096
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/Switcher;->setOnSwitchListener(Lcom/lge/camera/components/Switcher$OnSwitchListener;)V

    .line 3097
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 3099
    :cond_6
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v1, :cond_7

    .line 3100
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/SwitcherLeverVertical;->setOnSwitchLeverListener(Lcom/lge/camera/components/SwitcherLever$OnSwitchLeverListener;)V

    .line 3101
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 3103
    :cond_7
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_9

    .line 3104
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3105
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_8

    .line 3106
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3108
    :cond_8
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3109
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 3111
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_b

    .line 3112
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3113
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_a

    .line 3114
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3116
    :cond_a
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3117
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 3119
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v1, :cond_d

    .line 3120
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3121
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_c

    .line 3122
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 3124
    :cond_c
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3125
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 3127
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_d
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 3128
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3129
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 3131
    :cond_e
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 3132
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3133
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 3135
    :cond_f
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    if-eqz v1, :cond_10

    .line 3136
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3137
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 3139
    :cond_10
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 3140
    const-string v1, "CameraApp"

    const-string v2, "onDestory-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 3005
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3006
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 3009
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->stopTimerTask()V

    .line 3011
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 3012
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 3013
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 3014
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 3015
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_1

    .line 3016
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 3018
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    .line 3019
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3020
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailThread:Ljava/lang/Thread;

    .line 3022
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    .line 3023
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 3024
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mDeleteThumbnailThread:Ljava/lang/Thread;

    .line 3026
    :cond_3
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 3027
    invoke-direct {p0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setLockConditionForMainButton(Z)V

    .line 3029
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3030
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V

    .line 3034
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    const-string v3, "shotmode_refocus"

    invoke-interface {v0, v2, v3}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3036
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setRefocusShotHasPictures(Z)V

    .line 3040
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3041
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 3042
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 3043
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3044
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 3046
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    if-eqz v0, :cond_7

    .line 3047
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3048
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3049
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3051
    :cond_7
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    .line 3052
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_8

    .line 3053
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->close()V

    .line 3055
    :cond_8
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    .line 3057
    :cond_9
    return-void

    :cond_a
    move v0, v1

    .line 3016
    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2984
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2986
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume mInit["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    if-eqz v0, :cond_1

    .line 2988
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setPreviewPanelVisibility(Z)V

    .line 2989
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->enableCommand(Z)V

    .line 2990
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewPanelController;->setSwitcherVisible(Z)V

    .line 2991
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    .line 2995
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 2996
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    if-nez v0, :cond_1

    .line 2997
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/lge/camera/controller/PreviewPanelController;->startRotation(IZ)V

    .line 2998
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mProcessInitDone:Z

    .line 3001
    :cond_1
    return-void
.end method

.method public onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V
    .locals 5
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1679
    const-string v3, "CameraApp"

    const-string v4, "TIME_CHECK onShutterButtonClick"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    const-string v3, "CameraApp"

    const-string v4, "TIME CHECK : Shot to Shot [START] - onShutterButtonClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1684
    .local v0, "shotMode":Ljava/lang/String;
    invoke-direct {p0, p1, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->checkForShutterButton(Lcom/lge/camera/components/ShutterButton;ZZ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1685
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 1689
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    .line 1730
    :goto_0
    return-void

    .line 1693
    :cond_1
    invoke-virtual {p1}, Lcom/lge/camera/components/ShutterButton;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1695
    :pswitch_0
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_6

    .line 1696
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->checkShotModeForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1697
    const-string v1, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/lge/camera/util/CheckStatusManager;->checkVoiceShutterEnable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->audioCallbackRestartEngine()V

    .line 1701
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    goto :goto_0

    .line 1704
    :cond_3
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->checkFocusStateForShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1705
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startGestureEngine()V

    goto :goto_0

    .line 1708
    :cond_4
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 1709
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1710
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v4, :cond_5

    :goto_1
    invoke-virtual {v3, v1}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1712
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 1725
    :goto_2
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 1710
    goto :goto_1

    .line 1715
    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isRecordingControllerInit()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1716
    const-string v1, "CameraApp"

    const-string v2, "RecordingController not ready"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1719
    :cond_7
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    .line 1720
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    .line 1721
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    iget-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    if-nez v4, :cond_8

    :goto_3
    invoke-virtual {v3, v1}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 1723
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->doCamcorderShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    goto :goto_2

    :cond_8
    move v1, v2

    .line 1721
    goto :goto_3

    .line 1693
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0180
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V
    .locals 7
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;
    .param p2, "pressed"    # Z

    .prologue
    const/4 v6, 0x3

    const v5, 0x7f0d0181

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1494
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus pressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    .line 1496
    invoke-direct {p0, p1, v4, p2}, Lcom/lge/camera/controller/PreviewPanelController;->checkForShutterButton(Lcom/lge/camera/components/ShutterButton;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1558
    :goto_0
    return-void

    .line 1499
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_9

    .line 1500
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSynthesisInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1502
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1506
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getPlanePanoramaStatus()I

    move-result v0

    if-lt v0, v6, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1512
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v0

    if-lt v0, v6, :cond_4

    .line 1514
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkCurrentShotModeForModule()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1519
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 1523
    :cond_5
    if-eqz p2, :cond_6

    .line 1524
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->checkAutoReviewOff(Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1525
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1526
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1544
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/lge/camera/components/ShutterButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1546
    :pswitch_0
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isExternalMemoryOnly()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isExternalStorageRemoved()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1548
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 1549
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1550
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 1552
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setPressed(Z)V

    .line 1553
    invoke-virtual {p0, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doCameraShutterButtonFocus(Z)V

    goto/16 :goto_0

    .line 1528
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1529
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    .line 1533
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-nez v0, :cond_6

    .line 1534
    if-eqz p2, :cond_a

    .line 1535
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 1536
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    .line 1538
    :cond_a
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 1539
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    goto :goto_1

    .line 1544
    :pswitch_data_0
    .packed-switch 0x7f0d0180
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonLongPressed(Lcom/lge/camera/components/ShutterButton;)V
    .locals 7
    .param p1, "button"    # Lcom/lge/camera/components/ShutterButton;

    .prologue
    const/4 v6, 0x1

    .line 3239
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonLongPressed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 3325
    :cond_0
    :goto_0
    return-void

    .line 3243
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_full_continuous"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3245
    const-string v2, "CameraApp"

    const-string v3, "onShutterButtonLongPressed return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 3247
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 3248
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    goto :goto_0

    .line 3251
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3253
    const-string v2, "CameraApp"

    const-string v3, "return because panorama started"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3255
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3257
    const-string v2, "CameraApp"

    const-string v3, "return because plane panorama started"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3259
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3261
    const-string v2, "CameraApp"

    const-string v3, "return because free panorama don\'t use long key"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3295
    :cond_5
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 3297
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 3298
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3302
    :cond_6
    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3303
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 3304
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/ShutterButton;->setShutterButtonFocusEnable(Z)V

    .line 3305
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 3307
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3308
    const-string v0, "auto"

    .line 3309
    .local v0, "focusMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    .line 3310
    .local v1, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 3311
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### setFocusMode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3312
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 3315
    .end local v0    # "focusMode":Ljava/lang/String;
    .end local v1    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewPanelController$16;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewPanelController$16;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    const-wide/16 v4, 0x64

    invoke-interface {v2, v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

.method public onSwitchChanged(Lcom/lge/camera/components/SwitcherLever;Z)Z
    .locals 8
    .param p1, "source"    # Lcom/lge/camera/components/SwitcherLever;
    .param p2, "onOff"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3349
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Switch changed to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3350
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HidePIPResizeHandler"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 3351
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideSmartZoomFocusView()V

    .line 3352
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3404
    :cond_0
    :goto_0
    return v0

    .line 3356
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3362
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "onSwitcherClick return: is capturing.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3365
    :cond_3
    if-eqz p2, :cond_6

    .line 3366
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3367
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0a01a7

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0

    .line 3370
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isExitIgnoreDuringSaving()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3372
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    .line 3373
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->setExitIgnoreDuringSaving(Z)V

    .line 3374
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showSavingProgressDialog()V

    goto :goto_0

    .line 3378
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->toastControllerHide(Z)V

    .line 3379
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    .line 3380
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setEnabled(Z)V

    .line 3381
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 3382
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 3383
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3385
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ChangeToCamcorder"

    invoke-interface {v0, v2, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 3386
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    move v0, v1

    .line 3387
    goto/16 :goto_0

    .line 3389
    :cond_6
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3390
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-nez v2, :cond_0

    .line 3392
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1}, Lcom/lge/camera/ControllerFunction;->toastControllerHide(Z)V

    .line 3393
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setSwitchEnable(Z)V

    .line 3394
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->setEnabled(Z)V

    .line 3395
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 3396
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 3397
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3398
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ChangeToCamera"

    invoke-interface {v0, v2, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 3399
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    move v0, v1

    .line 3400
    goto/16 :goto_0
.end method

.method public onSwitcherClick(Lcom/lge/camera/components/Switcher;)V
    .locals 6
    .param p1, "button"    # Lcom/lge/camera/components/Switcher;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3146
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isLockDuringMediaScanning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3152
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "onSwitcherClick return: is capturing.."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3187
    :cond_1
    :goto_0
    return-void

    .line 3156
    :cond_2
    invoke-virtual {p1}, Lcom/lge/camera/components/Switcher;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 3159
    :sswitch_0
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3160
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0a01a7

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    goto :goto_0

    .line 3163
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3165
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "immediately"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3166
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.HideQuickFunctionSettingMenu"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3169
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_6

    const-string v1, "com.lge.camera.command.ChangeToCamcorder"

    .line 3171
    .local v1, "command":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    if-nez v2, :cond_1

    .line 3175
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonDisable()V

    .line 3176
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 3177
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5, v4}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 3178
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 3179
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v5}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 3180
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->toastControllerHide(Z)V

    .line 3181
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v1, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 3182
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideOsd()V

    goto/16 :goto_0

    .line 3169
    .end local v1    # "command":Ljava/lang/String;
    :cond_6
    const-string v1, "com.lge.camera.command.ChangeToCamera"

    goto :goto_1

    .line 3156
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d018b -> :sswitch_0
        0x7f0d0190 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 2132
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2133
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Mediator is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    :goto_0
    return v2

    .line 2136
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2137
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Mediator is pausing."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2140
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEnteringViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2141
    const-string v0, "CameraApp"

    const-string v1, "PreviewPanelController : Entering view is visible."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2144
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2146
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionDown(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2150
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionMove(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2154
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->doTouchActionUp(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public panelMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "duration"    # I
    .param p3, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 3556
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d0183

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 3557
    .local v1, "panelView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 3558
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 3559
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 3561
    .local v0, "direction":I
    :goto_0
    if-eqz p1, :cond_2

    .line 3562
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideIn(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    .line 3567
    .end local v0    # "direction":I
    :cond_0
    :goto_1
    return-void

    .line 3559
    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    .line 3564
    .restart local v0    # "direction":I
    :cond_2
    invoke-static {v1, v0, p2, p3}, Lcom/lge/camera/util/Util;->slideOut(Landroid/view/View;IILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    goto :goto_1
.end method

.method public performFocusOnShutterButton(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 872
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ShutterButton;->performFocus(Z)V

    .line 873
    return-void
.end method

.method public registerLockConditionForMainButton(Ljava/lang/String;)V
    .locals 5
    .param p1, "lockKey"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 362
    if-nez p1, :cond_0

    .line 363
    const-string v0, "CameraApp"

    const-string v1, "return by lockKey == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "lock key: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public releaseShutterFocus()V
    .locals 1

    .prologue
    .line 3214
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    if-eqz v0, :cond_0

    .line 3216
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 3217
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->cancelAutoFocus()V

    .line 3218
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setFocusRectangleInitialize()V

    .line 3219
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3220
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 3223
    :cond_0
    return-void
.end method

.method public resetSwitcherLever()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 780
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v1, :cond_0

    .line 781
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/lge/camera/components/SwitcherLeverVertical;->resetSwitcherLever(Z)V

    .line 783
    :cond_0
    return-void

    .line 781
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reviewThumbnailTouchActionUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2427
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    .line 2428
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    .line 2429
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2430
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2431
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2433
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    if-eqz v1, :cond_2

    .line 2434
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2435
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 2436
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1}, Lcom/lge/camera/components/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 2438
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/lge/camera/components/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2439
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2441
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2442
    return-void
.end method

.method public set3DSwitchImage()V
    .locals 0

    .prologue
    .line 3649
    return-void
.end method

.method public set3DSwitchVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 3646
    return-void
.end method

.method public setGalleryLaunching(Z)V
    .locals 0
    .param p1, "isLaunching"    # Z

    .prologue
    .line 2264
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryLaunching:Z

    .line 2265
    return-void
.end method

.method public setLastPictureThumb([BLandroid/net/Uri;Z)V
    .locals 10
    .param p1, "data"    # [B
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "isPicture"    # Z

    .prologue
    .line 1229
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1231
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "mThumbController:%s, isPausing():%b, uri:%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    aput-object p2, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v0, "CameraApp"

    const-string v1, "setLastThumb() return"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    monitor-exit v9

    .line 1276
    :goto_0
    return-void

    .line 1237
    :cond_1
    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1239
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1240
    if-eqz p3, :cond_2

    .line 1241
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1245
    :goto_1
    monitor-exit v9

    goto :goto_0

    .line 1275
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1243
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    goto :goto_1

    .line 1248
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "Thumbnail Start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    if-eqz p3, :cond_5

    .line 1250
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1252
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1253
    .local v3, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailWidth()I

    move-result v4

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    invoke-virtual {v0}, Lcom/lge/camera/components/ThumbnailController;->getThumbnailHeight()I

    move-result v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/lge/camera/util/Util;->getSampleSize([BLjava/io/FileDescriptor;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    iput v0, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1258
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v6

    .line 1260
    .local v6, "degree":I
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1261
    .local v8, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v8, v6, v1}, Lcom/lge/camera/ControllerFunction;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1262
    .local v7, "temp":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1263
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1265
    :cond_4
    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1274
    .end local v3    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v6    # "degree":I
    .end local v7    # "temp":Landroid/graphics/Bitmap;
    .end local v8    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_2
    const-string v0, "CameraApp"

    const-string v1, "Thumbnail End"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    monitor-exit v9

    goto :goto_0

    .line 1267
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1269
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 1270
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1272
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public setLastThumb(Landroid/net/Uri;Z)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isPicture"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1163
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkNeedUpdateLastThumb()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1165
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "mThumbController:%s, isPausing():%b, uri:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v2, 0x2

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string v2, "CameraApp"

    const-string v4, "setLastThumb() return"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    :goto_0
    return-void

    .line 1171
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1172
    const-string v4, "CameraApp"

    const-string v5, "Thumbnail Start"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1175
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1176
    .local v1, "temp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 1177
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1179
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1180
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thumbnail End. mThumbImage is null?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    if-eqz p2, :cond_4

    .line 1185
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "saveLastPicture error "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "temp":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "temp":Landroid/graphics/Bitmap;
    :cond_3
    move v2, v3

    .line 1181
    goto :goto_1

    .line 1191
    :cond_4
    :try_start_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1192
    :catch_1
    move-exception v0

    .line 1193
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "saveLastVideo error "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMainBarAlpha(I)V
    .locals 7
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 262
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0183

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 263
    .local v1, "mainBar":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 264
    const v4, 0x7f020054

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 265
    const-string v4, "on"

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_light"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 266
    const/4 p1, 0x0

    .line 286
    :cond_0
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "call setAlpha value ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 290
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mainBarAlpha_value:I

    .line 291
    const/16 v4, 0xff

    iput v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    .line 296
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 297
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 300
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 301
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 304
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 305
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 309
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 310
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v4}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 311
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v4}, Lcom/lge/camera/components/Switcher;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 324
    :cond_5
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 325
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v4}, Lcom/lge/camera/components/ShutterButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 326
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d0181

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 328
    :cond_6
    return-void

    .line 268
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_free_panorama"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 271
    :cond_8
    const/16 p1, 0x1e

    .line 274
    :cond_9
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "sizeOnScreenString":Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v2

    .line 278
    .local v2, "previewSizeOnScreen":[I
    aget v4, v2, v0

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09000a

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    if-le v4, v5, :cond_a

    const/4 v0, 0x1

    .line 281
    .local v0, "isOverPreviewSize":Z
    :cond_a
    if-eqz v0, :cond_0

    .line 282
    const/4 p1, 0x0

    goto/16 :goto_0

    .line 314
    .end local v0    # "isOverPreviewSize":Z
    .end local v2    # "previewSizeOnScreen":[I
    .end local v3    # "sizeOnScreenString":Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v4}, Lcom/lge/camera/components/SwitcherLeverVertical;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 315
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v4}, Lcom/lge/camera/components/SwitcherLeverVertical;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 316
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d018d

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 318
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d018e

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 319
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d018f

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1
.end method

.method public setMainButtonDisable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 431
    const-string v0, "CameraApp"

    const-string v1, "setMainButtonDisable"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterBurstShot:Z

    if-eqz v0, :cond_2

    .line 434
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "setMainButtonDisable return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 438
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_1

    .line 439
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-nez v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setPressed(Z)V

    .line 441
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/ShutterButton;->setEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0181

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method public setMainButtonEnable()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonEnable(Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public setMainButtonEnable(Ljava/lang/String;)V
    .locals 4
    .param p1, "lockKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 407
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainButtonEnable, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v0, "CameraApp"

    const-string v1, "TIME CHECK : Shot to Shot [END] - setMainButtonEnable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setUnlockConditionForMainButton(Ljava/lang/String;)V

    .line 412
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkLockConditionForMainButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "CameraApp"

    const-string v1, "return by checkLockConditionForMainButton() == true"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ShutterButton;->setEnabled(Z)V

    .line 419
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d017f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    goto :goto_0
.end method

.method public setMainButtonVisible(Z)V
    .locals 8
    .param p1, "visible"    # Z

    .prologue
    const v7, 0x7f0d0181

    const v6, 0x7f0d0180

    const v5, 0x7f0d017f

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 662
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMainbuttonVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 665
    const-string v0, "CameraApp"

    const-string v1, "setMainbuttonVisible : main_button_view did not inflate!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :goto_0
    return-void

    .line 669
    :cond_0
    if-eqz p1, :cond_1

    .line 670
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 672
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 675
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPreviewPanelVisibility(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const v4, 0x7f0d0183

    const/4 v3, 0x4

    const v2, 0x7f0d017d

    const/4 v1, 0x0

    .line 160
    if-eqz p1, :cond_1

    .line 161
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefocusReviewIconVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$4;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1427
    return-void
.end method

.method public setShutterButtonImage(ZI)V
    .locals 6
    .param p1, "buttonEnable"    # Z
    .param p2, "degree"    # I

    .prologue
    const v5, 0x7f0d0181

    const v4, 0x7f0d0180

    .line 448
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShutterButtonImage : status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", degree = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButton:Lcom/lge/camera/components/ShutterButton;

    if-nez v1, :cond_1

    .line 450
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "return by !mInit"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 454
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f02047e

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 456
    const v0, 0x7f02047c

    .line 457
    .local v0, "bgResId":I
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 458
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setCameraShutterButtonImage(ZI)I

    move-result v0

    .line 463
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 464
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 465
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 466
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->setMainButtonContentDescription()V

    goto :goto_0

    .line 460
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setCamcorderShutterButtonImage(ZI)I

    move-result v0

    goto :goto_1
.end method

.method public setShutterFocusLongKey(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 3210
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterFocusLongKey:Z

    .line 3211
    return-void
.end method

.method public setSubButton(II)V
    .locals 6
    .param p1, "loc"    # I
    .param p2, "resId"    # I

    .prologue
    const/4 v5, 0x0

    .line 791
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSubButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    packed-switch p1, :pswitch_data_0

    .line 831
    :cond_0
    :goto_0
    return-void

    .line 796
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonTop:Lcom/lge/camera/components/RotateImageButton;

    .line 797
    .local v0, "ib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonTop:Landroid/widget/ImageView;

    .line 813
    .local v1, "iv":Landroid/widget/ImageView;
    :goto_1
    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v0, p2}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 818
    if-nez p2, :cond_1

    .line 819
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 820
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 828
    :goto_2
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setFocusable(Z)V

    .line 829
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageButton;->setPressed(Z)V

    goto :goto_0

    .line 801
    .end local v0    # "ib":Lcom/lge/camera/components/RotateImageButton;
    .end local v1    # "iv":Landroid/widget/ImageView;
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonMiddle:Lcom/lge/camera/components/RotateImageButton;

    .line 802
    .restart local v0    # "ib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonMiddle:Landroid/widget/ImageView;

    .line 804
    .restart local v1    # "iv":Landroid/widget/ImageView;
    goto :goto_1

    .line 806
    .end local v0    # "ib":Lcom/lge/camera/components/RotateImageButton;
    .end local v1    # "iv":Landroid/widget/ImageView;
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    .line 807
    .restart local v0    # "ib":Lcom/lge/camera/components/RotateImageButton;
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubTouchButtonBottom:Landroid/widget/ImageView;

    .line 809
    .restart local v1    # "iv":Landroid/widget/ImageView;
    goto :goto_1

    .line 822
    :cond_1
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v5}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonVisibilityWithTouchBotton(II)V

    .line 823
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 824
    invoke-virtual {v0}, Lcom/lge/camera/components/RotateImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAlpha_value:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 825
    invoke-direct {p0, v1, p2}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButtonContentDescription(Landroid/view/View;I)V

    goto :goto_2

    .line 794
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSwitcherVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x1

    .line 681
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSwitcherVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "visibility":I
    if-eqz p1, :cond_2

    .line 685
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    const/4 v0, 0x4

    .line 692
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 693
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v1, :cond_1

    .line 694
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d018a

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 703
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setSwithcerEnable(Z)V

    .line 704
    return-void

    .line 689
    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    .line 697
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v2, :cond_1

    .line 698
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0d018d

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-ne v3, v1, :cond_4

    :goto_2
    invoke-virtual {v2, v1}, Lcom/lge/camera/components/SwitcherLeverVertical;->resetSwitcherLever(Z)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public setSwithcerEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 761
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useToggleSwitcher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d018b

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/Switcher;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcher:Lcom/lge/camera/components/Switcher;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/Switcher;->setEnabled(Z)V

    .line 777
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-nez v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0190

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/SwitcherLeverVertical;

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    .line 773
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    if-eqz v0, :cond_1

    .line 774
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSwitcherLever:Lcom/lge/camera/components/SwitcherLeverVertical;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/SwitcherLeverVertical;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setThumbBitmapAndUpdate(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 6
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v4, 0x64

    .line 1199
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setThumbBitmapAndUpdate : bmp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1201
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 1224
    :goto_0
    return-void

    .line 1205
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 1207
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1208
    :try_start_0
    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    .line 1209
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1210
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1212
    :cond_2
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    .line 1213
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1215
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 1217
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1218
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setEnabled(Z)V

    .line 1219
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1220
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbController:Lcom/lge/camera/components/ThumbnailController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/lge/camera/components/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 1213
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1222
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.UpdateThumbnailButton"

    invoke-interface {v0, v1, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 13
    .param p1, "visible"    # I

    .prologue
    const v10, 0x7f0d0192

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1388

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1280
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1281
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v10}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_8

    if-nez p1, :cond_8

    .line 1288
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimemachineHasPictures()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1289
    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1291
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_auto_review"

    invoke-interface {v1, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1292
    .local v0, "autoReview":Ljava/lang/String;
    const-string v1, "on_delay_2sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v4, 0x7d0

    .line 1293
    .local v4, "duration":J
    :goto_0
    const-string v1, "on_delay_5sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-wide v2, v8

    .line 1295
    .local v2, "autoReviewDuration":J
    :goto_1
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v11, v8, v9, v12}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 1327
    .end local v0    # "autoReview":Ljava/lang/String;
    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "autoReview":Ljava/lang/String;
    :cond_2
    move-wide v4, v6

    .line 1292
    goto :goto_0

    .restart local v4    # "duration":J
    :cond_3
    move-wide v2, v4

    .line 1293
    goto :goto_1

    .line 1299
    .end local v0    # "autoReview":Ljava/lang/String;
    .end local v4    # "duration":J
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isRefocusShotHasPictures()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1300
    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/PreviewPanelController;->setRefocusReviewIconVisible(Z)V

    .line 1302
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_auto_review"

    invoke-interface {v1, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1303
    .restart local v0    # "autoReview":Ljava/lang/String;
    const-string v1, "on_delay_2sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x7d0

    .line 1304
    .restart local v4    # "duration":J
    :goto_3
    const-string v1, "on_delay_5sec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-wide v2, v8

    .line 1306
    .restart local v2    # "autoReviewDuration":J
    :goto_4
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 1307
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v6, 0xbb8

    invoke-interface {v1, v12, v6, v7, v12}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    goto :goto_2

    .end local v2    # "autoReviewDuration":J
    .end local v4    # "duration":J
    :cond_5
    move-wide v4, v6

    .line 1303
    goto :goto_3

    .restart local v4    # "duration":J
    :cond_6
    move-wide v2, v4

    .line 1304
    goto :goto_4

    .line 1311
    .end local v0    # "autoReview":Ljava/lang/String;
    .end local v4    # "duration":J
    :cond_7
    invoke-virtual {p0, v11}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1312
    invoke-virtual {p0, v11}, Lcom/lge/camera/controller/PreviewPanelController;->setRefocusReviewIconVisible(Z)V

    .line 1313
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v11, v8, v9, v11}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 1315
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v12, v8, v9, v11}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    goto :goto_2

    .line 1320
    :cond_8
    invoke-virtual {p0, v11}, Lcom/lge/camera/controller/PreviewPanelController;->setTimeMachineReviewIconVisible(Z)V

    .line 1321
    invoke-virtual {p0, v11}, Lcom/lge/camera/controller/PreviewPanelController;->setRefocusReviewIconVisible(Z)V

    .line 1322
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v11, v8, v9, v11}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    .line 1324
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v12, v8, v9, v11}, Lcom/lge/camera/ControllerFunction;->showBubblePopupVisibility(IJZ)V

    goto :goto_2
.end method

.method public setTimeMachineReviewIconVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$3;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/controller/PreviewPanelController$3;-><init>(Lcom/lge/camera/controller/PreviewPanelController;Z)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1411
    return-void
.end method

.method public setUnlockConditionForMainButton(Ljava/lang/String;)V
    .locals 4
    .param p1, "lockKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 372
    if-nez p1, :cond_1

    .line 373
    const-string v0, "CameraApp"

    const-string v1, "return by lockKey == null"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "unlock key: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHashMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public showGalleryQuickViewAnimation(ZZ)V
    .locals 27
    .param p1, "open"    # Z
    .param p2, "deleteImage"    # Z

    .prologue
    .line 2743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d009b

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 2744
    .local v16, "galleryWindowView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d009e

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 2745
    .local v7, "galleryWindowViewImage":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d009c

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 2746
    .local v8, "blackCover":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00a1

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 2749
    .local v25, "trash":Landroid/view/View;
    :try_start_0
    move-object v0, v7

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2754
    :goto_0
    new-instance v4, Lcom/lge/camera/controller/PreviewPanelController$12;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lge/camera/controller/PreviewPanelController$12;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {v8, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2761
    invoke-virtual {v7}, Landroid/view/View;->clearAnimation()V

    .line 2763
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v22, v0

    .line 2764
    .local v22, "startPos":[I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 2765
    .local v24, "targetPos":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 2766
    .local v11, "adjustPos":[I
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 2767
    .local v26, "trashPos":[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/lge/camera/components/RotateImageView;->getLocationOnScreen([I)V

    .line 2768
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2769
    invoke-virtual {v7, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2770
    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2773
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v18, v4, v5

    .line 2775
    .local v18, "scaleX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v4}, Lcom/lge/camera/components/RotateImageView;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v19, v4, v5

    .line 2777
    .local v19, "scaleY":F
    const/4 v4, 0x0

    aget v4, v22, v4

    const/4 v5, 0x0

    aget v5, v24, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v20, v0

    .line 2778
    .local v20, "srcX":F
    const/4 v4, 0x1

    aget v4, v22, v4

    const/4 v5, 0x1

    aget v5, v24, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v21, v0

    .line 2779
    .local v21, "srcY":F
    const/4 v4, 0x0

    aget v4, v24, v4

    int-to-float v13, v4

    .line 2780
    .local v13, "destX":F
    const/4 v4, 0x1

    aget v4, v24, v4

    int-to-float v14, v4

    .line 2782
    .local v14, "destY":F
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 2783
    const/16 v18, 0x0

    .line 2784
    const/16 v19, 0x0

    .line 2785
    const/4 v4, 0x0

    aget v4, v26, v4

    const/4 v5, 0x0

    aget v5, v24, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v20, v0

    .line 2786
    const/4 v4, 0x1

    aget v4, v26, v4

    const/4 v5, 0x1

    aget v5, v24, v5

    const/4 v6, 0x1

    aget v6, v11, v6

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-float v0, v4

    move/from16 v21, v0

    .line 2788
    check-cast v25, Lcom/lge/camera/components/RotateImageButton;

    .end local v25    # "trash":Landroid/view/View;
    const v4, 0x7f0200ea

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2792
    :cond_0
    const/16 v17, 0x0

    .line 2793
    .local v17, "sa":Landroid/view/animation/ScaleAnimation;
    const/16 v23, 0x0

    .line 2794
    .local v23, "ta":Landroid/view/animation/TranslateAnimation;
    const/4 v10, 0x0

    .line 2796
    .local v10, "aa":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_2

    .line 2797
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 2798
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    .line 2866
    :goto_1
    return-void

    .line 2750
    .end local v10    # "aa":Landroid/view/animation/AlphaAnimation;
    .end local v11    # "adjustPos":[I
    .end local v13    # "destX":F
    .end local v14    # "destY":F
    .end local v17    # "sa":Landroid/view/animation/ScaleAnimation;
    .end local v18    # "scaleX":F
    .end local v19    # "scaleY":F
    .end local v20    # "srcX":F
    .end local v21    # "srcY":F
    .end local v22    # "startPos":[I
    .end local v23    # "ta":Landroid/view/animation/TranslateAnimation;
    .end local v24    # "targetPos":[I
    .end local v26    # "trashPos":[I
    .restart local v25    # "trash":Landroid/view/View;
    :catch_0
    move-exception v15

    .line 2751
    .local v15, "e":Ljava/lang/ClassCastException;
    const-string v4, "CameraApp"

    const-string v5, "ClassCastException:"

    invoke-static {v4, v5, v15}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 2801
    .end local v15    # "e":Ljava/lang/ClassCastException;
    .end local v25    # "trash":Landroid/view/View;
    .restart local v10    # "aa":Landroid/view/animation/AlphaAnimation;
    .restart local v11    # "adjustPos":[I
    .restart local v13    # "destX":F
    .restart local v14    # "destY":F
    .restart local v17    # "sa":Landroid/view/animation/ScaleAnimation;
    .restart local v18    # "scaleX":F
    .restart local v19    # "scaleY":F
    .restart local v20    # "srcX":F
    .restart local v21    # "srcY":F
    .restart local v22    # "startPos":[I
    .restart local v23    # "ta":Landroid/view/animation/TranslateAnimation;
    .restart local v24    # "targetPos":[I
    .restart local v26    # "trashPos":[I
    :cond_1
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    .end local v17    # "sa":Landroid/view/animation/ScaleAnimation;
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v4, v2, v5}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 2802
    .restart local v17    # "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "ta":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v13, v2, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2803
    .restart local v23    # "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "aa":Landroid/view/animation/AlphaAnimation;
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2804
    .restart local v10    # "aa":Landroid/view/animation/AlphaAnimation;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2805
    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2820
    :goto_2
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v4, 0x1

    invoke-direct {v12, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2821
    .local v12, "aniSet":Landroid/view/animation/AnimationSet;
    new-instance v4, Lcom/lge/camera/controller/PreviewPanelController$13;

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/lge/camera/controller/PreviewPanelController$13;-><init>(Lcom/lge/camera/controller/PreviewPanelController;ZLandroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2860
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2861
    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2862
    invoke-virtual {v12, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2863
    const-wide/16 v4, 0x12c

    invoke-virtual {v12, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 2864
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v5, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2865
    invoke-virtual {v7, v12}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 2807
    .end local v12    # "aniSet":Landroid/view/animation/AnimationSet;
    :cond_2
    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 2809
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewPanelController;->galleryWindowViewClose()V

    goto :goto_1

    .line 2812
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/controller/PreviewPanelController;->mLastPictureButton:Lcom/lge/camera/components/RotateImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RotateImageView;->setPressed(Z)V

    .line 2813
    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2815
    new-instance v17, Landroid/view/animation/ScaleAnimation;

    .end local v17    # "sa":Landroid/view/animation/ScaleAnimation;
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v4, v1, v5, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    .line 2816
    .restart local v17    # "sa":Landroid/view/animation/ScaleAnimation;
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    .end local v23    # "ta":Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, v23

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v13, v1, v14, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2817
    .restart local v23    # "ta":Landroid/view/animation/TranslateAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "aa":Landroid/view/animation/AlphaAnimation;
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v10, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v10    # "aa":Landroid/view/animation/AlphaAnimation;
    goto :goto_2
.end method

.method public showGalleryQuickViewWindow(ZJ)Z
    .locals 12
    .param p1, "useLongKey"    # Z
    .param p2, "duration"    # J

    .prologue
    .line 2531
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewPanelController;->clearSettingMenuAndSubMenuForReviewButton()V

    .line 2533
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d009b

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2534
    .local v2, "galleryWindowView":Landroid/view/View;
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d009e

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2536
    .local v3, "galleryWindowViewImage":Landroid/view/View;
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    if-nez v2, :cond_1

    .line 2539
    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 2540
    const/4 v7, 0x0

    .line 2616
    :goto_0
    return v7

    .line 2543
    :cond_1
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d00a2

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2544
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d00a3

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/components/RotateImageView;

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2545
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 2547
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d00a1

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/lge/camera/components/RotateImageButton;

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    .line 2548
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    const v8, 0x7f0200e9

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageButton;->setImageResource(I)V

    .line 2550
    if-nez p1, :cond_4

    .line 2551
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mAutoReviewBlockTouch:Z

    .line 2552
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2553
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2554
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbLayout:Landroid/view/View;

    .line 2555
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    if-eqz v7, :cond_2

    .line 2556
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-static {v7}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2557
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2558
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    .line 2591
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d009f

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    .line 2592
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mLastGalleryImage:Landroid/widget/ImageView;

    const v8, 0x7f0200e7

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 2594
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2595
    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2597
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->setGalleryWindowImage(Landroid/net/Uri;I)V

    .line 2599
    const/4 v7, 0x1

    iput v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    .line 2600
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2601
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/controller/PreviewPanelController$9;

    invoke-direct {v8, p0}, Lcom/lge/camera/controller/PreviewPanelController$9;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 2612
    if-nez p1, :cond_3

    .line 2613
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mHideQuickViewRunable:Ljava/lang/Runnable;

    invoke-interface {v7, v8, p2, p3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 2616
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 2561
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mTrashView:Lcom/lge/camera/components/RotateImageButton;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 2562
    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2563
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 2564
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0902d0

    invoke-static {v7, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 2566
    .local v0, "circleRadius":I
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v9, 0x7f0902cf

    invoke-static {v7, v9}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    .line 2568
    .local v5, "thmbSize":I
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2569
    .local v6, "thumbBmp":Landroid/graphics/Bitmap;
    invoke-static {v6, v5, v5, v0}, Lcom/lge/camera/util/Util;->getRoundedImage(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2570
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-static {v7}, Lcom/lge/camera/util/Util;->clearImageViewDrawable(Landroid/widget/ImageView;)V

    .line 2571
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    invoke-virtual {v7, v6}, Lcom/lge/camera/components/RotateImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2573
    .end local v0    # "circleRadius":I
    .end local v5    # "thmbSize":I
    .end local v6    # "thumbBmp":Landroid/graphics/Bitmap;
    :cond_5
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2574
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mQuickViewThumbImage:Lcom/lge/camera/components/RotateImageView;

    const v8, 0x3ef33333    # 0.475f

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/RotateImageView;->setAlpha(F)V

    .line 2576
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2577
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v8, 0x7f0d009d

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2578
    .local v1, "galleryWindowLayout":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2579
    .local v4, "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v4}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 2580
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2581
    const/16 v7, 0x14

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2582
    iget v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 2587
    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 2573
    .end local v1    # "galleryWindowLayout":Landroid/view/View;
    .end local v4    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 2584
    .restart local v1    # "galleryWindowLayout":Landroid/view/View;
    .restart local v4    # "marginParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v7, 0xa

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 2585
    iget v7, p0, Lcom/lge/camera/controller/PreviewPanelController;->NAVI_MARGIN:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_2
.end method

.method public showLiveSnapshotButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 847
    const/4 v0, 0x0

    const v1, 0x7f02047b

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 848
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0184

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 849
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0185

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 850
    return-void
.end method

.method public showRecoridngStopButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 858
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    const/4 v0, 0x2

    const v1, 0x7f02048c

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 862
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSubButtonBottom:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageButton;->setEnabled(Z)V

    .line 863
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0189

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method public showSubButtonInit(Z)V
    .locals 2
    .param p1, "updateThumb"    # Z

    .prologue
    const/4 v1, 0x0

    .line 834
    invoke-virtual {p0, v1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 835
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 836
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->setSubButton(II)V

    .line 838
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButtonVisibility()V

    .line 839
    if-eqz p1, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    .line 842
    :cond_0
    return-void
.end method

.method public slidePanelIn()V
    .locals 3

    .prologue
    .line 3507
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    if-nez v0, :cond_1

    .line 3529
    :cond_0
    :goto_0
    return-void

    .line 3511
    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xc8

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$20;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewPanelController$20;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->panelMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public slidePanelOut()V
    .locals 3

    .prologue
    .line 3532
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mInit:Z

    if-nez v0, :cond_1

    .line 3553
    :cond_0
    :goto_0
    return-void

    .line 3536
    :cond_1
    const/4 v0, 0x0

    const/16 v1, 0xc8

    new-instance v2, Lcom/lge/camera/controller/PreviewPanelController$21;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewPanelController$21;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->panelMenuAnimation(ZILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public snapshotOnContinuousFocus()Z
    .locals 1

    .prologue
    .line 3194
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnContinuousFocus:Z

    return v0
.end method

.method public snapshotOnIdle()Z
    .locals 1

    .prologue
    .line 3190
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mSnapshotOnIdle:Z

    return v0
.end method

.method public startRotation(IZ)V
    .locals 8
    .param p1, "degree"    # I
    .param p2, "animation"    # Z

    .prologue
    const v7, 0x7f0d018d

    const/4 v4, 0x0

    .line 1432
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1483
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/Util;->convertDegree(Landroid/content/res/Resources;I)I

    move-result v0

    .line 1438
    .local v0, "convDegree":I
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0184

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1439
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0186

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1440
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0188

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1441
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0192

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1442
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0193

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1444
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0194

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1445
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d00a3

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1447
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d018b

    invoke-interface {v5, v6, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1449
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d018e

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1450
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d018f

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1451
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0190

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1454
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0229

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1455
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d022b

    invoke-interface {v5, v6, p1, v4, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 1456
    if-eqz p1, :cond_1

    const/16 v5, 0xb4

    if-ne p1, v5, :cond_3

    .line 1457
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020432

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1464
    :goto_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d0181

    invoke-interface {v5, v6, v0, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    .line 1465
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->isShutterButtonEnable()Z

    move-result v5

    invoke-virtual {p0, v5, p1}, Lcom/lge/camera/controller/PreviewPanelController;->setShutterButtonImage(ZI)V

    .line 1467
    iget v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 1469
    :try_start_0
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d009e

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateLayout;

    .line 1471
    .local v2, "galleryQuickView":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v2, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 1473
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v4

    .line 1474
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d018c

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/lge/camera/components/RotateLayout;

    .line 1476
    .local v3, "switcherLeverView":Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v3, v0}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    .end local v2    # "galleryQuickView":Lcom/lge/camera/components/RotateLayout;
    .end local v3    # "switcherLeverView":Lcom/lge/camera/components/RotateLayout;
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0d00a1

    invoke-interface {v4, v5, p1, p2}, Lcom/lge/camera/ControllerFunction;->setDegree(IIZ)V

    goto/16 :goto_0

    .line 1460
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f020433

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1473
    .restart local v2    # "galleryQuickView":Lcom/lge/camera/components/RotateLayout;
    :cond_4
    const/16 v0, 0x10e

    goto :goto_2

    .line 1478
    .end local v2    # "galleryQuickView":Lcom/lge/camera/components/RotateLayout;
    :catch_0
    move-exception v1

    .line 1479
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v4, "CameraApp"

    const-string v5, "ClassCastException:"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public stopTimerTask()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3330
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3331
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_voiceshutter"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 3336
    :cond_0
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonLongKey:Z

    .line 3338
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 3339
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3340
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 3341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mButtonCheckTimer:Ljava/util/Timer;

    .line 3343
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController;->mShutterButtonRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 3345
    :cond_2
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 2

    .prologue
    .line 1369
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewPanelController$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewPanelController$2;-><init>(Lcom/lge/camera/controller/PreviewPanelController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1396
    return-void
.end method

.method public updateThumbnailButtonVisibility()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1331
    const/4 v2, 0x0

    .line 1333
    .local v2, "visible":I
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1334
    const/16 v2, 0x8

    .line 1337
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1339
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1342
    :cond_1
    const/16 v2, 0x8

    .line 1345
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    if-ne v3, v5, :cond_6

    .line 1347
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1348
    const/16 v2, 0x8

    .line 1352
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_live_effect"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1353
    .local v0, "liveEffect":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_video_record_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1354
    .local v1, "recordMode":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "off"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "not found"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    const-string v3, "recordmode_live_effect"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "recordmode_dual"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_preview_size_on_device"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/properties/MmsProperties;->isAvailableMmsResolution(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1361
    :cond_5
    const/16 v2, 0x8

    .line 1365
    .end local v0    # "liveEffect":Ljava/lang/String;
    .end local v1    # "recordMode":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/PreviewPanelController;->setThumbnailButtonVisibility(I)V

    .line 1366
    return-void
.end method
