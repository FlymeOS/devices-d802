.class Lcom/lge/dockservice/DockWindowService$DockView;
.super Landroid/widget/ImageView;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DockView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mClient:Lcom/lge/dockservice/IBaseDockWindow;

.field public mCurrentDockPosX:I

.field public mCurrentDockPosY:I

.field private mDockDirection:I

.field private mDockViewTouchOffsetX:I

.field private mDockViewTouchOffsetY:I

.field private mDownX:I

.field private mDownY:I

.field private mFingerOffsetX:I

.field private mFingerOffsetY:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHasTouchDownConfirmed:Z

.field private final mIconSize:[I

.field private mIsInLowProfile:Z

.field private mPackageName:Ljava/lang/String;

.field private mRawDockIcon:Landroid/graphics/Bitmap;

.field private mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

.field private mStartedAsDock:Z

.field private mState:I

.field mX_Landscape:I

.field mX_Portrate:I

.field mY_Landscape:I

.field mY_Portrate:I

.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/IBaseDockWindow;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    .locals 8
    .param p2, "token"    # Lcom/lge/dockservice/IBaseDockWindow;
    .param p3, "packagename"    # Ljava/lang/String;
    .param p4, "dockIcon"    # Landroid/graphics/Bitmap;
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "initToShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 963
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    .line 964
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 945
    iput-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    .line 946
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 947
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 948
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 949
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Portrate:I

    .line 950
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Portrate:I

    .line 951
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mX_Landscape:I

    .line 952
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mY_Landscape:I

    .line 953
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 956
    iput-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    .line 958
    iput-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 959
    iput-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    .line 960
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    .line 961
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    .line 1390
    iput-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1391
    iput-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    .line 1393
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetX:I

    .line 1394
    iput v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    .line 1396
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownX:I

    .line 1397
    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownY:I

    .line 965
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "init DockView"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v3, Landroid/view/GestureDetector;

    new-instance v4, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;

    invoke-direct {v4, p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView$MyGestureListener;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/DockWindowService$1;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p1, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 968
    iput-object p3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    .line 969
    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    .line 970
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    .line 971
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v6

    .line 972
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    aput v4, v3, v7

    .line 974
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v6

    mul-int/lit8 v3, v3, 0x0

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    .line 975
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v7

    mul-int/lit8 v3, v3, 0x0

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    .line 976
    iput-object p4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mRawDockIcon:Landroid/graphics/Bitmap;

    .line 977
    invoke-direct {p0, p5, p6}, Lcom/lge/dockservice/DockWindowService$DockView;->setDockImageToWindow(II)V

    .line 980
    new-instance v3, Lcom/lge/dockservice/TransitionAnimator;

    invoke-direct {v3}, Lcom/lge/dockservice/TransitionAnimator;-><init>()V

    iput-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    .line 981
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Lcom/lge/dockservice/TransitionAnimator;->setInterpolator(Landroid/view/animation/DecelerateInterpolator;)V

    .line 982
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/lge/dockservice/TransitionAnimator;->setDuration(I)V

    .line 985
    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 986
    .local v2, "talkbackName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 988
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    invoke-interface {v3}, Lcom/lge/dockservice/IBaseDockWindow;->getAppName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 992
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 996
    if-eqz p7, :cond_0

    .line 997
    :try_start_1
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->awake()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1009
    :goto_1
    return-void

    .line 989
    :catch_0
    move-exception v1

    .line 990
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1000
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1003
    :catch_1
    move-exception v1

    .line 1004
    .restart local v1    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception occured : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1006
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->removeDockViewWindow()V

    .line 1007
    throw v1
.end method

.method static synthetic access$1100(Lcom/lge/dockservice/DockWindowService$DockView;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/IBaseDockWindow;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/dockservice/DockWindowService$DockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 942
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    return v0
.end method

.method static synthetic access$1400(Lcom/lge/dockservice/DockWindowService$DockView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 942
    invoke-direct {p0, p1, p2}, Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/dockservice/DockWindowService$DockView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 942
    invoke-direct {p0, p1, p2}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p1, "x1"    # Z

    .prologue
    .line 942
    invoke-direct {p0, p1}, Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/TransitionAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/dockservice/DockWindowService$DockView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 942
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/lge/dockservice/DockWindowService$DockView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p1, "x1"    # Z

    .prologue
    .line 942
    iput-boolean p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    return p1
.end method

.method static synthetic access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;

    .prologue
    .line 942
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    return v0
.end method

.method static synthetic access$802(Lcom/lge/dockservice/DockWindowService$DockView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p1, "x1"    # I

    .prologue
    .line 942
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    return p1
.end method

.method static synthetic access$900(Lcom/lge/dockservice/DockWindowService$DockView;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/dockservice/DockWindowService$DockView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 942
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V

    return-void
.end method

.method private attachToWall(Z)V
    .locals 6
    .param p1, "realMoving"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1629
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attachToWall for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1631
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1632
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dock view x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1634
    if-eqz p1, :cond_0

    .line 1635
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    .line 1651
    :goto_0
    return-void

    .line 1638
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    goto :goto_0

    .line 1640
    :cond_1
    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1641
    if-eqz p1, :cond_2

    .line 1642
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v5, v2}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    goto :goto_0

    .line 1645
    :cond_2
    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    goto :goto_0

    .line 1648
    :cond_3
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dock to invalid direction: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(this means undock)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private awake()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1287
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "awake dock"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V

    .line 1289
    return-void
.end method

.method private awake(IIZ)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "adjustFingerOffset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1293
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "awake dock to ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1297
    :try_start_0
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :goto_0
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v2, v5

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v6

    add-int/2addr v3, p2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v2

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 1303
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1304
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) awaken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1305
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1306
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, -0x11

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1307
    if-eqz p3, :cond_0

    .line 1308
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v2, v5

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    sub-int p1, v2, v3

    .line 1309
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v2, v6

    sub-int v2, p2, v2

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    sub-int p2, v2, v3

    .line 1311
    :cond_0
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1312
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1314
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1315
    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1316
    invoke-direct {p0, p0, v1}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1317
    return-void

    .line 1298
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 1299
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in awake: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleDockBackGround()V
    .locals 1

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround(I)V

    .line 1195
    return-void
.end method

.method private handleDockBackGround(I)V
    .locals 2
    .param p1, "dockDirection"    # I

    .prologue
    .line 1177
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1178
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setBackgroundResource(I)V

    .line 1189
    :goto_0
    return-void

    .line 1180
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1181
    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setBackgroundResource(I)V

    goto :goto_0

    .line 1183
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1187
    :cond_2
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exceptional case occured in handleDockBackGround."

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInDockArea()I
    .locals 6

    .prologue
    .line 1372
    iget v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v0

    return v0
.end method

.method private isInDockArea(IIII)I
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 1380
    const/4 v1, -0x1

    .line 1383
    .local v1, "isInDockArea":I
    :try_start_0
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->isInDockArea(Landroid/graphics/Rect;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1387
    :goto_0
    return v1

    .line 1384
    :catch_0
    move-exception v0

    .line 1385
    .local v0, "exception":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured in isInDockArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isInSystemArea(I)I
    .locals 5
    .param p1, "currentY"    # I

    .prologue
    const/4 v2, 0x1

    .line 1531
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1532
    .local v1, "statusBarHeight":I
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1533
    .local v0, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1534
    if-ge p1, v1, :cond_0

    .line 1540
    :goto_0
    return v2

    .line 1537
    :cond_0
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v2, v3, v2

    add-int/2addr v2, p1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_1

    .line 1538
    const/4 v2, 0x2

    goto :goto_0

    .line 1540
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private moveTo(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1544
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "move to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v1}, Lcom/lge/dockservice/TransitionAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v1}, Lcom/lge/dockservice/TransitionAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    :cond_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ensure slideTo animation ends before moveTo"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v1}, Lcom/lge/dockservice/TransitionAnimator;->cancel()V

    .line 1550
    :cond_1
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1551
    .local v0, "dockviewlp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1552
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1554
    invoke-direct {p0, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1555
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1556
    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1560
    return-void
.end method

.method private removeDockViewWindow()V
    .locals 4

    .prologue
    .line 1011
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removeDockViewWindow"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :try_start_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    :goto_0
    return-void

    .line 1016
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured in removeDockViewWindow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setDockImageToWindow(II)V
    .locals 8
    .param p1, "touchX"    # I
    .param p2, "touchY"    # I

    .prologue
    const/4 v7, 0x1

    .line 1024
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "set Dock Image To Window"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mRawDockIcon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-static {v3, v4, v5, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1028
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1030
    iput p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1031
    iput p2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1032
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround()V

    .line 1034
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1035
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DockView: for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1047
    const/16 v3, 0x7d2

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1048
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1049
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v3, v3, v7

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1050
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1052
    const/4 v3, 0x0

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1054
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    invoke-direct {p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView;->isInSystemArea(I)I

    move-result v2

    .line 1055
    .local v2, "mIsInSystemArea":I
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v3}, Lcom/lge/dockservice/DockWindowService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1057
    .local v0, "dm":Landroid/util/DisplayMetrics;
    if-ne v2, v7, :cond_0

    .line 1058
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1066
    :goto_0
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1067
    const v3, 0x800033

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1068
    const v3, 0x10108

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1071
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20001

    and-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1075
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1076
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1077
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1078
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    return-void

    .line 1060
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1061
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 1064
    :cond_1
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private sleep()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1274
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sleep dock"

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1276
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) go to sleep"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1279
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v1, v2}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V

    .line 1280
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 1281
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1282
    invoke-direct {p0, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1283
    return-void
.end method

.method private slideTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1563
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    .line 1564
    return-void
.end method

.method private slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "listener"    # Lcom/lge/dockservice/TransitionAnimator$UpdateListener;

    .prologue
    .line 1567
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slideTo ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) to ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1570
    :cond_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "preceding slideTo animation ends"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->end()V

    .line 1573
    :cond_1
    move-object v0, p3

    .line 1574
    .local v0, "animatorListener":Lcom/lge/dockservice/TransitionAnimator$UpdateListener;
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 1575
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    .line 1576
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    .line 1577
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v2, v3, p1}, Lcom/lge/dockservice/TransitionAnimator;->setRangeX(II)V

    .line 1578
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v2, v3, p2}, Lcom/lge/dockservice/TransitionAnimator;->setRangeY(II)V

    .line 1579
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    new-instance v3, Lcom/lge/dockservice/DockWindowService$DockView$4;

    invoke-direct {v3, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView$4;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    invoke-virtual {v2, v3}, Lcom/lge/dockservice/TransitionAnimator;->setUpdateListener(Lcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    .line 1625
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mSlidingAnimator:Lcom/lge/dockservice/TransitionAnimator;

    invoke-virtual {v2}, Lcom/lge/dockservice/TransitionAnimator;->start()V

    .line 1626
    return-void
.end method

.method private updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1688
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1689
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateViewLayoutInSafety - mWindowManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    :goto_0
    return-void

    .line 1693
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1694
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in updateViewLayout - view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public applyLowProfile(Z)V
    .locals 11
    .param p1, "isEntering"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1088
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyLowProfile... isEntering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1090
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock views are already in low profile"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    :goto_0
    return-void

    .line 1093
    :cond_0
    iget-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    .line 1094
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "dock views are already not in low profile"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1098
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    if-eqz v4, :cond_2

    .line 1099
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v6, "entering low profile while dockview is being touched... do like touch cancel"

    invoke-static {v4, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0, v9}, Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V

    .line 1103
    iput-boolean v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1106
    :cond_2
    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    if-eq v4, v10, :cond_3

    .line 1107
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore applyLowProfile("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when dock view is not in dock state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    :cond_3
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_5

    .line 1112
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1114
    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1118
    :goto_1
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "on anim cancel by "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_6

    const-string v4, "enter"

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    :cond_5
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_7

    const-string v4, "enter"

    :goto_3
    invoke-static {v6, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    move-object v3, p0

    .line 1124
    .local v3, "targetView":Landroid/view/View;
    if-eqz p1, :cond_8

    move v2, v5

    .line 1125
    .local v2, "startAlpha":F
    :goto_4
    if-eqz p1, :cond_9

    .line 1126
    .local v1, "endAlpha":F
    :goto_5
    new-array v4, v10, [F

    aput v2, v4, v8

    aput v1, v4, v9

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1127
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080008

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1128
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1129
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/lge/dockservice/DockWindowService$DockView$1;

    invoke-direct {v5, p0, v3}, Lcom/lge/dockservice/DockWindowService$DockView$1;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1156
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/lge/dockservice/DockWindowService$DockView$2;

    invoke-direct {v5, p0, v3, v1}, Lcom/lge/dockservice/DockWindowService$DockView$2;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;Landroid/view/View;F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1168
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1169
    iput-boolean p1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    .line 1170
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAnimationStart / mIsInLowProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    .end local v1    # "endAlpha":F
    .end local v2    # "startAlpha":F
    .end local v3    # "targetView":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    const-string v4, "exit"

    goto/16 :goto_2

    .line 1122
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exit low profile for dockview "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    .restart local v3    # "targetView":Landroid/view/View;
    :cond_8
    move v2, v1

    .line 1124
    goto/16 :goto_4

    .restart local v2    # "startAlpha":F
    :cond_9
    move v1, v5

    .line 1125
    goto/16 :goto_5
.end method

.method public killdock()V
    .locals 4

    .prologue
    .line 1221
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "execute killdock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V
    invoke-static {v1, p0}, Lcom/lge/dockservice/DockWindowService;->access$600(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    .line 1230
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$1000(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$1000(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 1231
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v2, 0x0

    # setter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v1, v2}, Lcom/lge/dockservice/DockWindowService;->access$1002(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1234
    :cond_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1237
    :try_start_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v1, v2}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    :goto_0
    return-void

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "killdock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moveToTop()V
    .locals 9

    .prologue
    .line 1658
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "move "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DockView to top"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1659
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1661
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    # getter for: Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$2400()Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1663
    :try_start_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->sMoveWindowTokenToTopMethodEx:Ljava/lang/reflect/Method;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$2400()Ljava/lang/reflect/Method;

    move-result-object v4

    # getter for: Lcom/lge/dockservice/DockWindowService;->sIWindowManager:Ljava/lang/Object;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$2500()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1664
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sMoveWindowTokenToTopMethodEx called!"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1666
    .local v3, "v":Landroid/view/View;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1667
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 1668
    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1669
    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1670
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1671
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1684
    .end local v1    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "v":Landroid/view/View;
    :goto_0
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # setter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v4, p0}, Lcom/lge/dockservice/DockWindowService;->access$1002(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1685
    return-void

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "cannot move to top using moveWindowTokenToTopMethod."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1681
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1682
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v4}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 1201
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow DockView : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    if-ne v1, v4, :cond_0

    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    if-eq v1, v4, :cond_1

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1205
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1206
    invoke-direct {p0, p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->updateViewLayoutInSafety(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 1209
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    invoke-static {v1, p0, v5}, Lcom/lge/dockservice/DockWindowService;->access$2100(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    .line 1210
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v5, v1, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    .line 1211
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 1212
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 1216
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 1217
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow DockView : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1400
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTouchEvent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIsInLowProfile:Z

    if-eqz v5, :cond_0

    .line 1403
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ignore touch event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while in low profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :goto_0
    return v3

    .line 1407
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    move v3, v4

    .line 1408
    goto :goto_0

    .line 1411
    :cond_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 1415
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1420
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownX:I

    .line 1422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownY:I

    .line 1423
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1442
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1444
    :pswitch_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_DOWN - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDockDirection : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iput-boolean v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1446
    iget v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    if-eq v4, v9, :cond_4

    .line 1447
    iput-boolean v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    .line 1451
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetX:I

    .line 1452
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    .line 1455
    invoke-virtual {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->moveToTop()V

    .line 1457
    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    iput-boolean v3, v4, Lcom/lge/dockservice/DockWindowService;->refreshDockAxis:Z

    goto :goto_0

    .line 1426
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownX:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1427
    .local v1, "xMove":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDownY:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1428
    .local v2, "yMove":I
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1429
    .local v0, "slop":I
    if-gt v1, v0, :cond_6

    if-le v2, v0, :cond_7

    .line 1430
    :cond_6
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "prevent send touch event to guestureDetector"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1433
    :cond_7
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1434
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mGestureDetector consumed touch event"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1460
    .end local v0    # "slop":I
    .end local v1    # "xMove":I
    .end local v2    # "yMove":I
    :pswitch_1
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    if-nez v5, :cond_8

    .line 1461
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ignore touch move without preceding touch down"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1464
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->isInSystemArea(I)I

    move-result v5

    if-lez v5, :cond_9

    .line 1465
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "In system Area. Do not handle move."

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1470
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 1477
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-direct {p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround(I)V

    .line 1480
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    if-eqz v5, :cond_a

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetX:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockViewTouchOffsetY:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    goto/16 :goto_0

    .line 1484
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v4, v6, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v5, v4

    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetX:I

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mIconSize:[I

    aget v6, v6, v3

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mFingerOffsetY:I

    sub-int/2addr v5, v6

    invoke-direct {p0, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->moveTo(II)V

    goto/16 :goto_0

    .line 1490
    :pswitch_2
    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    if-nez v5, :cond_b

    .line 1491
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ignore touch up without preceding touch down"

    invoke-static {v4, v5}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1494
    :cond_b
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DockView ACTION_UP"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/lge/dockservice/DockWindowService$DockView;->isInDockArea(IIII)I

    move-result v5

    iput v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    .line 1504
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    invoke-direct {p0, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->handleDockBackGround(I)V

    .line 1507
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mDockDirection:I

    if-ne v5, v9, :cond_c

    .line 1508
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Request Undock"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    iget v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {p0, v5, v6}, Lcom/lge/dockservice/DockWindowService$DockView;->undock(II)V

    .line 1518
    :goto_2
    iput-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z

    .line 1519
    iput-boolean v4, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mStartedAsDock:Z

    goto/16 :goto_0

    .line 1513
    :cond_c
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Keep dock state"

    invoke-static {v5, v6}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    invoke-direct {p0, v4}, Lcom/lge/dockservice/DockWindowService$DockView;->attachToWall(Z)V

    .line 1516
    iget-object v5, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->updateDockByLocation(Lcom/lge/dockservice/DockWindowService$DockView;Z)V
    invoke-static {v5, p0, v3}, Lcom/lge/dockservice/DockWindowService;->access$2100(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;Z)V

    goto :goto_2

    .line 1442
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public undock(II)V
    .locals 5
    .param p1, "requestedUndockPositionX"    # I
    .param p2, "requestedUndockPositionY"    # I

    .prologue
    .line 1244
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute undock at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    :try_start_0
    invoke-direct {p0}, Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    :goto_0
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$1000(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$1000(Lcom/lge/dockservice/DockWindowService;)Lcom/lge/dockservice/DockWindowService$DockView;

    move-result-object v2

    if-ne v2, p0, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    const/4 v3, 0x0

    # setter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v2, v3}, Lcom/lge/dockservice/DockWindowService;->access$1002(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService$DockView;

    .line 1256
    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    .line 1258
    :try_start_1
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mState:I

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V

    .line 1259
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    invoke-interface {v2, p1, p2}, Lcom/lge/dockservice/IBaseDockWindow;->onFinishingUndockAt(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1270
    :goto_1
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1260
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1261
    .restart local v0    # "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured in undock : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SendBroadCast to force unDock and stop DockWindowService."

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.intent.action.FORCE_UNDOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "windowname"

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v2, "posX"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1266
    const-string v2, "posY"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1267
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1268
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService;->stopSelf()V

    goto :goto_1
.end method

.method public undockBySingleTabUp()V
    .locals 9

    .prologue
    .line 1320
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "undockBySingleTabUp"

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    const/4 v0, 0x0

    .line 1324
    .local v0, "clientRect":Landroid/graphics/Rect;
    :try_start_0
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mClient:Lcom/lge/dockservice/IBaseDockWindow;

    invoke-interface {v6}, Lcom/lge/dockservice/IBaseDockWindow;->getClientRect()Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1332
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1333
    .local v2, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v6}, Lcom/lge/dockservice/DockWindowService;->access$1700(Lcom/lge/dockservice/DockWindowService;)Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1334
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1335
    .local v5, "screenwidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1336
    .local v1, "clientWidth":I
    sub-int v6, v5, v1

    div-int/lit8 v4, v6, 0x2

    .line 1339
    .local v4, "newPosX":I
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Start slideTo animation ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget v6, p0, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    new-instance v7, Lcom/lge/dockservice/DockWindowService$DockView$3;

    invoke-direct {v7, p0, v4}, Lcom/lge/dockservice/DockWindowService$DockView$3;-><init>(Lcom/lge/dockservice/DockWindowService$DockView;I)V

    invoke-direct {p0, v4, v6, v7}, Lcom/lge/dockservice/DockWindowService$DockView;->slideTo(IILcom/lge/dockservice/TransitionAnimator$UpdateListener;)V

    .line 1360
    .end local v1    # "clientWidth":I
    .end local v2    # "displaymetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "newPosX":I
    .end local v5    # "screenwidth":I
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v3

    .line 1326
    .local v3, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception occured in undockBySingTapUp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method updateDockIconImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$DockView;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$2000(Lcom/lge/dockservice/DockWindowService;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/dockservice/DockWindowService$DockView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1085
    return-void
.end method
