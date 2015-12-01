.class public abstract Lcom/lge/camera/controller/FocusController;
.super Lcom/lge/camera/controller/Controller;
.source "FocusController.java"


# static fields
.field public static final FOCUS_POSITION_DEFAULT:I = 0x0

.field public static final FOCUS_POSITION_FACE:I = 0x2

.field public static final FOCUS_POSITION_TOUCH:I = 0x1


# instance fields
.field public final FOCUS_GUIDE_HEIGHT:I

.field public final FOCUS_GUIDE_WIDTH:I

.field public final PREVIEW_MARGINE_LEFT:I

.field public final RECTANGLE_HEIGHT:I

.field public final RECTANGLE_MARGINE_LEFT:I

.field public final RECTANGLE_MARGINE_TOP:I

.field public final RECTANGLE_WIDTH:I

.field private continuousFocus:Ljava/lang/Runnable;

.field private isCafOnGoing:Z

.field protected mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field protected mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field protected mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

.field protected mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

.field protected mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field mFailShowFocusBeforeInit:Z

.field public mFocusAreaHeight:I

.field public mFocusAreaLeftMargin:I

.field public mFocusAreaTopMargin:I

.field public mFocusAreaWidth:I

.field protected mFocusPosition:I

.field protected mFocusRect:Landroid/graphics/Rect;

.field protected mFocusState:I

.field private mIsRegisterObjectCallback:Z

.field private mObjectState:I

.field protected mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

.field public mRegister:Z

.field protected mTouchedAFbyFaceTr:Z

.field private scaleRatio:F


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a3

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    .line 53
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a4

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    .line 55
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a5

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_LEFT:I

    .line 57
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a6

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_TOP:I

    .line 59
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09000c

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->PREVIEW_MARGINE_LEFT:I

    .line 61
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a0

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->FOCUS_GUIDE_WIDTH:I

    .line 63
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0901a1

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/FocusController;->FOCUS_GUIDE_HEIGHT:I

    .line 68
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 74
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    .line 79
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 81
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 82
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 83
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 84
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    .line 85
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    .line 86
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    .line 88
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    .line 89
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->isCafOnGoing:Z

    .line 177
    new-instance v0, Lcom/lge/camera/controller/FocusController$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/FocusController$1;-><init>(Lcom/lge/camera/controller/FocusController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    .line 805
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 806
    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z

    .line 93
    return-void
.end method

.method private getPreviewLeftMargin()I
    .locals 5

    .prologue
    .line 687
    const/4 v0, 0x0

    .line 688
    .local v0, "leftMargin":I
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0d0175

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 689
    .local v1, "previewLayout":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 693
    .local v2, "previewParam":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 698
    :goto_0
    return v0

    .line 696
    :cond_0
    iget v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method private setLayoutForObjectFocus(IIIILandroid/widget/ImageView;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "objectTracking"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 1008
    invoke-virtual {p5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1009
    invoke-virtual {p5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1010
    const v4, 0x3f333333    # 0.7f

    invoke-virtual {p5, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1012
    :cond_0
    invoke-virtual {p5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1017
    .local v1, "otp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p3, 0x2

    sub-int/2addr v4, v5

    if-le p1, v4, :cond_1

    .line 1018
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p3, 0x2

    sub-int p1, v4, v5

    .line 1021
    :cond_1
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p4, 0x2

    sub-int/2addr v4, v5

    if-le p2, v4, :cond_2

    .line 1022
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    add-int/2addr v4, v5

    div-int/lit8 v5, p4, 0x2

    sub-int p2, v4, v5

    .line 1025
    :cond_2
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v4, p1, v4

    div-int/lit8 v5, p3, 0x2

    sub-int v0, v4, v5

    .line 1026
    .local v0, "left":I
    div-int/lit8 v4, p4, 0x2

    sub-int v2, p2, v4

    .line 1028
    .local v2, "top":I
    iget-object v4, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1029
    if-gez v0, :cond_3

    move v0, v3

    .end local v0    # "left":I
    :cond_3
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1030
    if-gez v2, :cond_4

    :goto_0
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1031
    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1032
    iput p4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1040
    .end local v2    # "top":I
    :goto_1
    invoke-virtual {p5, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1041
    return-void

    .restart local v2    # "top":I
    :cond_4
    move v3, v2

    .line 1030
    goto :goto_0

    .line 1034
    .restart local v0    # "left":I
    :cond_5
    if-gez v2, :cond_6

    move v2, v3

    .end local v2    # "top":I
    :cond_6
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1035
    if-gez v0, :cond_7

    :goto_2
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1036
    iput p4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1037
    iput p3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_1

    :cond_7
    move v3, v0

    .line 1035
    goto :goto_2
.end method


# virtual methods
.method public calculateObjectScaleRatio()V
    .locals 4

    .prologue
    .line 840
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 842
    .local v0, "previewSizeOnDevice":Landroid/hardware/Camera$Size;
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    int-to-float v1, v1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    .line 843
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object scale ratio : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 0

    .prologue
    .line 1175
    return-void
.end method

.method public checkAvailablePreviewSize()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 823
    const/16 v2, 0x140

    .line 824
    .local v2, "qvgaWidth":I
    iget-object v6, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, "sizeOnDeviceString":Ljava/lang/String;
    invoke-static {v4}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 827
    .local v1, "previewSizeOnDevice":[I
    const-string v3, "off"

    .line 828
    .local v3, "sVideoFps":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v7, "key_preview_size_on_device"

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 830
    .local v0, "pref":Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {v0}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo3()Ljava/lang/String;

    move-result-object v3

    .line 833
    :cond_0
    aget v6, v1, v5

    const/16 v7, 0x140

    if-gt v6, v7, :cond_1

    iget-object v6, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "off"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "3840x2160"

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v5, 0x1

    :cond_2
    return v5
.end method

.method public checkFocusResigerCallBack()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 565
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 566
    const-string v2, "CameraApp"

    const-string v3, "mediator is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    :goto_0
    return v1

    .line 570
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkPreviewController()Z

    move-result v2

    if-nez v2, :cond_1

    .line 571
    const-string v2, "CameraApp"

    const-string v3, "previewcontroller is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 574
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewOnGoing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    const-string v2, "CameraApp"

    const-string v3, "Preview is not started yet, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_4

    .line 579
    :cond_3
    const-string v2, "CameraApp"

    const-string v3, "device or parameter is null, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 586
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public checkMultiWindowAFCondition()Z
    .locals 3

    .prologue
    .line 1138
    const-string v0, "multiwindowaf"

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkShotModeForMultiWindowAF()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-nez v0, :cond_1

    .line 1143
    const/4 v0, 0x1

    .line 1145
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkShotModeForMultiWindowAF()Z
    .locals 3

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    :cond_0
    const/4 v0, 0x0

    .line 1134
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clearFocusState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 702
    const-string v0, "CameraApp"

    const-string v1, "clearFocusState"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iput v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 704
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setFocusPosition(I)V

    .line 706
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator()V

    .line 707
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V

    .line 711
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setContinuousFocusActive(Z)V

    .line 713
    :cond_0
    return-void
.end method

.method public abstract doFocus(Z)V
.end method

.method public doFocusOnCaf()V
    .locals 0

    .prologue
    .line 1218
    return-void
.end method

.method public getCafOnGoing()Z
    .locals 1

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->isCafOnGoing:Z

    return v0
.end method

.method public getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;
    .locals 4
    .param p1, "lgParam"    # Lcom/lge/hardware/LGCamera$LGParameters;

    .prologue
    .line 1149
    const/4 v0, 0x0

    .line 1150
    .local v0, "defaultFocusMode":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 1151
    const-string v1, "multiwindowaf"

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "mw_continuous-picture"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkShotModeForMultiWindowAF()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1158
    const-string v0, "mw_continuous-picture"

    .line 1163
    :cond_1
    :goto_0
    return-object v0

    .line 1160
    :cond_2
    const-string v0, "continuous-picture"

    goto :goto_0
.end method

.method public getFocusState()I
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x4

    .line 226
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0
.end method

.method public getObjectTrackingState()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    return v0
.end method

.method public hideFocus()Z
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 312
    const-string v0, "CameraApp"

    const-string v1, "hideFocus-init"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mInit:Z

    if-nez v0, :cond_0

    .line 315
    const-string v0, "CameraApp"

    const-string v1, "mInit is false, return"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const/4 v0, 0x0

    .line 329
    :goto_0
    return v0

    .line 319
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "hideFocus-gone"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_1

    .line 322
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setBackgroundDefault()V

    .line 323
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 324
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->clearAnimation()V

    .line 327
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 329
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initController()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FocusController init-start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d00c7

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d0088

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraFocusView;

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 100
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d008a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/CameraMultiWindowAFView;

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    .line 102
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->initMultiWindowAFView()V

    .line 104
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3, v3}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 111
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visible? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraFocusView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    .line 113
    iput-boolean v4, p0, Lcom/lge/camera/controller/FocusController;->mInit:Z

    .line 115
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 127
    const-string v0, "CameraApp"

    const-string v1, "### showFocus & register "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->registerCallback()V

    .line 131
    :cond_2
    iput-boolean v3, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    .line 133
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "FocusController init-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public initFocusAreas()V
    .locals 0

    .prologue
    .line 1209
    return-void
.end method

.method public initMultiWindowAFView()V
    .locals 6

    .prologue
    .line 1102
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v3}, Lcom/lge/camera/components/CameraMultiWindowAFView;->isInitialize()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    .line 1104
    .local v0, "lgCamera":Lcom/lge/hardware/LGCamera;
    if-eqz v0, :cond_0

    .line 1105
    invoke-virtual {v0}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    .line 1106
    .local v1, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    if-eqz v1, :cond_0

    .line 1107
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v2

    .line 1110
    .local v2, "previewSizeOnScreen":[I
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getMultiWindowFocusAreas()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1111
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    iget-object v4, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getMultiWindowFocusAreas()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->init(Landroid/content/Context;Ljava/util/List;[I)V

    .line 1118
    .end local v0    # "lgCamera":Lcom/lge/hardware/LGCamera;
    .end local v1    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    .end local v2    # "previewSizeOnScreen":[I
    :cond_0
    return-void
.end method

.method public isBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 1171
    const/4 v0, 0x0

    return v0
.end method

.method public isContinuousFocusActivating()Z
    .locals 1

    .prologue
    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public isFocusIndicatorUpdateAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 428
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    :cond_0
    :goto_0
    return v0

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_dual_camera"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 435
    const-string v1, "CameraApp"

    const-string v2, "updateFocusStateIndicator - dual camera mode, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v2, :cond_0

    move v0, v1

    .line 443
    goto :goto_0
.end method

.method public isFocusViewVisible()Z
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 306
    :cond_1
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisterObjectCallback()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z

    return v0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 1

    .prologue
    .line 1178
    const/4 v0, 0x1

    return v0
.end method

.method public reInitialize()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->reInitialize()V

    .line 140
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->destroyMultiWindowAFGuide()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    .line 144
    :cond_0
    return-void
.end method

.method public registerCallback()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 470
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegister = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkFocusResigerCallBack()Z

    move-result v2

    if-nez v2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 478
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportCafCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 480
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "focusMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 483
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "mw_continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 487
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    if-nez v2, :cond_0

    .line 488
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 490
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().setAutoFocusMoveCallback(callback) - for registerCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 503
    .end local v1    # "focusMode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 495
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v1    # "focusMode":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().autoFocus(callback) - for registerCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 506
    .end local v1    # "focusMode":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public registerFaceTrackingCallback()V
    .locals 0

    .prologue
    .line 1212
    return-void
.end method

.method public registerObjectCallback()V
    .locals 4

    .prologue
    .line 1044
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    .line 1049
    .local v1, "lgCamera":Lcom/lge/hardware/LGCamera;
    if-eqz v1, :cond_0

    .line 1050
    const-string v2, "CameraApp"

    const-string v3, "Register object callback"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera;->setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V

    .line 1058
    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1060
    .end local v1    # "lgCamera":Lcom/lge/hardware/LGCamera;
    :catch_0
    move-exception v0

    .line 1061
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "registerObjectCallback:RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1055
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "lgCamera":Lcom/lge/hardware/LGCamera;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mObjectTrackingFocusCallback:Lcom/lge/camera/listeners/ObjectTrackingFocusCallback;

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera;->setOBTDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public removeContinuousFocusRunnable()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 0
    .param p1, "beBlocked"    # Z

    .prologue
    .line 1168
    return-void
.end method

.method public setCafOnGoing(Z)V
    .locals 0
    .param p1, "CafOnGoing"    # Z

    .prologue
    .line 1098
    iput-boolean p1, p0, Lcom/lge/camera/controller/FocusController;->isCafOnGoing:Z

    .line 1099
    return-void
.end method

.method public setClearFocusAnimation()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->clearAnimation()V

    .line 593
    :cond_0
    return-void
.end method

.method public setContinuousFocusActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 1202
    return-void
.end method

.method public setFocusAreaWindow(III)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "leftMargin"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    .line 148
    iput p2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 149
    iput p3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 150
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    .line 152
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0179

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    .local v0, "v":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 156
    const v1, 0x7f02038a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 162
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 158
    .restart local v0    # "v":Landroid/widget/ImageView;
    :cond_1
    const v1, 0x7f020383

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setFocusPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 799
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    .line 800
    return-void
.end method

.method public setFocusRectangle(IIII)V
    .locals 4
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 759
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraFocusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 762
    .local v0, "rl":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/lge/camera/util/Common;->isQuickWindowCameraMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 763
    const-string v1, "auto"

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    sget v1, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 p2, v1, 0x2

    .line 765
    sget v1, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    div-int/lit8 p1, v1, 0x2

    .line 767
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 768
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 778
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 779
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 780
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 785
    :goto_1
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v1, v0}, Lcom/lge/camera/components/CameraFocusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v1, p1, v1

    if-gez v1, :cond_0

    .line 787
    const/4 p1, 0x0

    .line 788
    iget p3, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    sub-int v3, p3, v3

    invoke-virtual {v1, v2, p2, v3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 792
    .end local v0    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    return-void

    .line 770
    .restart local v0    # "rl":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    sget v1, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int/2addr v1, v2

    div-int/lit8 p1, v1, 0x2

    .line 771
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 772
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 775
    :cond_3
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 776
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    goto :goto_0

    .line 782
    :cond_4
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 783
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method public setFocusRectangle(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 795
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lge/camera/controller/FocusController;->setFocusRectangle(IIII)V

    .line 796
    return-void
.end method

.method public setFocusRectangleInitialize()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusRectangleInitialize(Z)V

    .line 717
    return-void
.end method

.method public setFocusRectangleInitialize(Z)V
    .locals 11
    .param p1, "isRemoveCafRunable"    # Z

    .prologue
    const/4 v10, 0x0

    .line 720
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setFocusRectangleInitialize isRemoveCAFrunable="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    if-eqz p1, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->removeContinuousFocusRunnable()V

    .line 724
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->clearFocusState()V

    .line 725
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 727
    iget v2, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_LEFT:I

    .line 728
    .local v2, "marginLeft":I
    iget v3, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_TOP:I

    .line 730
    .local v3, "marginTop":I
    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090008

    invoke-static {v7, v8}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 731
    .local v0, "lcdWidth":I
    const v7, 0x7f09000c

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/FocusController;->getPixelFromDimens(I)I

    move-result v1

    .line 732
    .local v1, "leftMargin":I
    const v7, 0x7f09000a

    invoke-virtual {p0, v7}, Lcom/lge/camera/controller/FocusController;->getPixelFromDimens(I)I

    move-result v5

    .line 734
    .local v5, "previewWidth":I
    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 735
    .local v6, "sizeOnScreenString":Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v4

    .line 737
    .local v4, "previewSizeOnScreen":[I
    aget v7, v4, v10

    if-le v7, v5, :cond_3

    .line 738
    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int v7, v0, v7

    div-int/lit8 v2, v7, 0x2

    .line 747
    :goto_0
    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    add-int/2addr v7, v2

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    add-int/2addr v8, v3

    invoke-virtual {p0, v2, v3, v7, v8}, Lcom/lge/camera/controller/FocusController;->setFocusRectangle(IIII)V

    .line 750
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 754
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->initFocusAreas()V

    .line 756
    :cond_2
    return-void

    .line 740
    :cond_3
    aget v7, v4, v10

    sub-int v8, v5, v1

    if-le v7, v8, :cond_4

    .line 741
    aget v7, v4, v10

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    goto :goto_0

    .line 743
    :cond_4
    aget v7, v4, v10

    iget v8, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    goto :goto_0
.end method

.method public setFocusState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 200
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_3

    .line 204
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v4, 0xbb8

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 207
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "focus":Ljava/lang/String;
    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "not found"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    const-wide/16 v4, 0x320

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 213
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator(ILjava/util/List;)V

    goto :goto_0

    .line 216
    .end local v0    # "focus":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->continuousFocus:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 217
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    goto :goto_0
.end method

.method public setFocusView(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/lge/camera/controller/FocusController;->mInit:Z

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFrontTouchAESupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 171
    const/16 p1, 0x9

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraFocusView;->setState(I)V

    goto :goto_0
.end method

.method public setMoveNormalFocusRect(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 598
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    sub-int v1, p1, v6

    .line 599
    .local v1, "left":I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    sub-int v5, p2, v6

    .line 600
    .local v5, "top":I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v6, v6, 0x2

    add-int v4, p1, v6

    .line 601
    .local v4, "right":I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v6, v6, 0x2

    add-int v0, p2, v6

    .line 603
    .local v0, "bottom":I
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    if-gt v1, v6, :cond_0

    .line 604
    iget v1, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    .line 605
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    add-int v4, v6, v7

    .line 607
    :cond_0
    if-gtz v5, :cond_1

    .line 608
    const/4 v5, 0x0

    .line 609
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    .line 611
    :cond_1
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v6, v7

    if-lt v4, v6, :cond_2

    .line 612
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int v4, v6, v7

    .line 613
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaLeftMargin:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_WIDTH:I

    sub-int v1, v6, v7

    .line 615
    :cond_2
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    if-lt v0, v6, :cond_3

    .line 616
    iget v6, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    iget v7, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    sub-int v5, v6, v7

    .line 617
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaHeight:I

    .line 620
    :cond_3
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "move to top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", right = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", bottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0, v1, v5, v4, v0}, Lcom/lge/camera/controller/FocusController;->setFocusRectangle(IIII)V

    .line 625
    iget-boolean v6, p0, Lcom/lge/camera/controller/FocusController;->mTouchedAFbyFaceTr:Z

    if-eqz v6, :cond_4

    .line 626
    const-string v6, "CameraApp"

    const-string v7, "setMoveNormalFocusRect - No need to start animation"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :goto_0
    return-void

    .line 629
    :cond_4
    const/4 v2, 0x0

    .line 630
    .local v2, "pivotX":F
    const/4 v3, 0x0

    .line 631
    .local v3, "pivotY":F
    iget-object v6, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 632
    sub-int v6, p1, v1

    int-to-float v2, v6

    .line 633
    sub-int v6, p2, v5

    int-to-float v3, v6

    .line 638
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/FocusController;->startGuideViewAnimation(FF)V

    .line 639
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / top = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / x - left = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p1, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / y - top  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-int v8, p2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_5
    sub-int v6, v0, p2

    int-to-float v2, v6

    .line 636
    sub-int v6, p1, v1

    int-to-float v3, v6

    goto :goto_1
.end method

.method public setMoveNormalFocusRectCenter()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 673
    const/4 v2, 0x0

    .local v2, "x":I
    const/4 v3, 0x0

    .line 674
    .local v3, "y":I
    iget-object v4, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "sizeOnScreenString":Ljava/lang/String;
    invoke-static {v1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 676
    .local v0, "previewSizeOnScreen":[I
    aget v4, v0, v7

    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09000a

    invoke-static {v5, v6}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v5

    if-le v4, v5, :cond_0

    .line 678
    iget-object v4, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f090008

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    div-int/lit8 v2, v4, 0x2

    .line 682
    :goto_0
    iget v4, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_MARGINE_TOP:I

    iget v5, p0, Lcom/lge/camera/controller/FocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 683
    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/controller/FocusController;->setMoveNormalFocusRect(II)V

    .line 684
    return-void

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/FocusController;->getPreviewLeftMargin()I

    move-result v4

    aget v5, v0, v7

    div-int/lit8 v5, v5, 0x2

    add-int v2, v4, v5

    goto :goto_0
.end method

.method public setMultiWindowAFView([I)V
    .locals 1
    .param p1, "previewSizeOnScreen"    # [I

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->refresh([I)V

    .line 1124
    :cond_0
    return-void
.end method

.method public setObjectFocusState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 813
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 814
    return-void
.end method

.method public setShutterButtonClicked(Z)V
    .locals 0
    .param p1, "clicked"    # Z

    .prologue
    .line 1195
    return-void
.end method

.method public showFocus()Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 231
    const-string v2, "CameraApp"

    const-string v3, "showFocus"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: is fixed focus"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return v0

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 240
    :cond_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showFocus, return: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    const-string v1, "CameraApp"

    const-string v2, "showFocus, return: mode is camcorder"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isNullSettingView()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingViewRemoving()Z

    move-result v2

    if-nez v2, :cond_4

    .line 251
    const-string v1, "CameraApp"

    const-string v2, "settingview is not null && is not Removing"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_4
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mInit:Z

    if-nez v2, :cond_5

    .line 256
    const-string v2, "CameraApp"

    const-string v3, "mInit is false, return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iput-boolean v1, p0, Lcom/lge/camera/controller/FocusController;->mFailShowFocusBeforeInit:Z

    goto :goto_0

    .line 261
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-ne v2, v1, :cond_6

    .line 262
    const-string v1, "CameraApp"

    const-string v2, "front camera, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 266
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_dual_camera"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 274
    :cond_7
    const-string v1, "CameraApp"

    const-string v2, "dual camera / panorama mode, return"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 278
    :cond_8
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFocus - visible, mFocusPosition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_a

    .line 281
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shotMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 283
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraFocusView;->clearAnimation()V

    .line 286
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v6}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    :goto_1
    move v0, v1

    .line 299
    goto/16 :goto_0

    .line 288
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setBackgroundDefault()V

    .line 289
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 290
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setVisibility(I)V

    .line 292
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v2, v0}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 293
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator()V

    goto :goto_1

    .line 296
    :cond_a
    const-string v0, "CameraApp"

    const-string v2, "mCameraMultiWindowAFView or mCameraFocusView is null!"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showFocus(Z)Z
    .locals 1
    .param p1, "justDoIt"    # Z

    .prologue
    .line 1205
    const/4 v0, 0x1

    return v0
.end method

.method public startAEByTouchPress(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1182
    return-void
.end method

.method public startFocusByTouchPress(II)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1185
    return-void
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bTouchedAFbyFaceTr"    # Z

    .prologue
    .line 1188
    return-void
.end method

.method public startGuideViewAnimation(FF)V
    .locals 11
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0x8

    const/4 v10, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    .line 649
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-ne v3, v5, :cond_2

    :cond_0
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 651
    .local v1, "scaleStart":F
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v3

    if-ne v3, v5, :cond_3

    :cond_1
    move v2, v9

    .line 654
    .local v2, "scaleEnd":F
    :goto_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 656
    .local v0, "mAniFocusScale":Landroid/view/animation/ScaleAnimation;
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v8, v3, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 658
    .local v8, "mAniFocusAlpha":Landroid/view/animation/AlphaAnimation;
    new-instance v7, Landroid/view/animation/AnimationSet;

    invoke-direct {v7, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 659
    .local v7, "aniSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 660
    invoke-virtual {v7, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 661
    invoke-virtual {v7, v10}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 662
    const-wide/16 v4, 0x12c

    invoke-virtual {v7, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 663
    new-instance v3, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v7, v3}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 665
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 666
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v3, v7}, Lcom/lge/camera/components/CameraMultiWindowAFView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 670
    :goto_2
    return-void

    .end local v0    # "mAniFocusScale":Landroid/view/animation/ScaleAnimation;
    .end local v1    # "scaleStart":F
    .end local v2    # "scaleEnd":F
    .end local v7    # "aniSet":Landroid/view/animation/AnimationSet;
    .end local v8    # "mAniFocusAlpha":Landroid/view/animation/AlphaAnimation;
    :cond_2
    move v1, v9

    .line 649
    goto :goto_0

    .line 651
    .restart local v1    # "scaleStart":F
    :cond_3
    const v2, 0x3f170a3d    # 0.59f

    goto :goto_1

    .line 668
    .restart local v0    # "mAniFocusScale":Landroid/view/animation/ScaleAnimation;
    .restart local v2    # "scaleEnd":F
    .restart local v7    # "aniSet":Landroid/view/animation/AnimationSet;
    .restart local v8    # "mAniFocusAlpha":Landroid/view/animation/AlphaAnimation;
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v3, v7}, Lcom/lge/camera/components/CameraFocusView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public startObjectTrackingFocus(IIIII)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "state"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x3

    .line 889
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_3

    .line 893
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    .line 896
    :cond_2
    const/4 p5, 0x0

    .line 900
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f0d017a

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateImageButton;

    .line 902
    .local v5, "objectTracking":Lcom/lge/camera/components/RotateImageButton;
    if-eqz v5, :cond_0

    .line 903
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 905
    const/4 p5, 0x0

    .line 907
    :cond_4
    iput p5, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 908
    packed-switch p5, :pswitch_data_0

    goto :goto_0

    .line 929
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 930
    const v0, 0x7f020292

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 931
    invoke-virtual {v5, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->removeQuickButton(I)V

    goto :goto_0

    .line 910
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;II)V

    .line 912
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 913
    const v0, 0x7f020292

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    :goto_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 938
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->setLayoutForObjectFocus(IIIILandroid/widget/ImageView;)V

    goto :goto_0

    .line 916
    :pswitch_2
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->addQuickButton(Landroid/content/Context;II)V

    .line 918
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v4, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 919
    const v0, 0x7f020291

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 922
    :pswitch_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 923
    const v0, 0x7f020290

    invoke-virtual {v5, v0}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 924
    invoke-virtual {v5, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->removeQuickButton(I)V

    goto :goto_1

    .line 908
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public startObjectTrackingFocus([I)V
    .locals 13
    .param p1, "data"    # [I

    .prologue
    const/4 v12, 0x4

    const/4 v4, 0x2

    const/high16 v3, -0x10000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 852
    const/4 v5, 0x0

    .local v5, "status":I
    const/4 v7, 0x0

    .local v7, "left":I
    const/4 v9, 0x0

    .local v9, "top":I
    const/4 v8, 0x0

    .local v8, "right":I
    const/4 v6, 0x0

    .line 853
    .local v6, "bottom":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    aget v0, p1, v1

    and-int/lit16 v5, v0, 0xff

    .line 855
    aget v0, p1, v1

    and-int/2addr v0, v3

    ushr-int/lit8 v7, v0, 0x10

    .line 856
    aget v0, p1, v2

    const v1, 0xffff

    and-int v9, v0, v1

    .line 857
    aget v0, p1, v2

    and-int/2addr v0, v3

    ushr-int/lit8 v8, v0, 0x10

    .line 858
    aget v0, p1, v4

    const v1, 0xffff

    and-int v6, v0, v1

    .line 867
    :goto_0
    if-eqz v5, :cond_0

    if-le v5, v12, :cond_2

    .line 885
    :cond_0
    :goto_1
    return-void

    .line 860
    :cond_1
    aget v5, p1, v1

    .line 861
    aget v7, p1, v2

    .line 862
    aget v9, p1, v4

    .line 863
    const/4 v0, 0x3

    aget v8, p1, v0

    .line 864
    aget v6, p1, v12

    goto :goto_0

    .line 871
    :cond_2
    sub-int v0, v8, v7

    div-int/lit8 v0, v0, 0x2

    add-int v10, v7, v0

    .line 872
    .local v10, "x":I
    sub-int v0, v6, v9

    div-int/lit8 v0, v0, 0x2

    add-int v11, v9, v0

    .line 873
    .local v11, "y":I
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Object callback values, x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", object status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", coordinate left : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", right : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bottom : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    int-to-float v0, v10

    iget v1, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v0, v11

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v2, v0

    sub-int v0, v8, v7

    int-to-float v0, v0

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    sub-int v0, v6, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocusForSmartZoom(IIIII)V

    goto/16 :goto_1

    .line 881
    :cond_3
    int-to-float v0, v10

    iget v1, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v1

    float-to-int v1, v0

    int-to-float v0, v11

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/lge/camera/controller/FocusController;->mFocusAreaTopMargin:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v2, v0

    sub-int v0, v8, v7

    int-to-float v0, v0

    iget v3, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v3

    float-to-int v3, v0

    sub-int v0, v6, v9

    int-to-float v0, v0

    iget v4, p0, Lcom/lge/camera/controller/FocusController;->scaleRatio:F

    mul-float/2addr v0, v4

    float-to-int v4, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/controller/FocusController;->startObjectTrackingFocus(IIIII)V

    goto/16 :goto_1
.end method

.method public startObjectTrackingFocusForSmartZoom(IIIII)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "state"    # I

    .prologue
    const v8, 0x7f020292

    const/16 v7, 0x8

    .line 944
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1004
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v5

    if-nez v5, :cond_3

    .line 948
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 950
    :cond_2
    const/4 p5, 0x0

    .line 954
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v6, 0x7f0d017a

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/lge/camera/components/RotateImageButton;

    .line 956
    .local v2, "objectTracking":Lcom/lge/camera/components/RotateImageButton;
    if-eqz v2, :cond_0

    .line 957
    iput p5, p0, Lcom/lge/camera/controller/FocusController;->mObjectState:I

    .line 958
    packed-switch p5, :pswitch_data_0

    .line 983
    :goto_1
    move v0, p1

    .line 984
    .local v0, "convX":I
    move v1, p2

    .line 986
    .local v1, "convY":I
    const/4 v5, 0x4

    if-ne p5, v5, :cond_4

    .line 987
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->initSmartZoomFocusView()V

    .line 988
    const-string v5, "CameraApp"

    const-string v6, "startObjectTrackingFocusForSmartZoom : focus view moves to default position"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 960
    .end local v0    # "convX":I
    .end local v1    # "convY":I
    :pswitch_0
    invoke-virtual {v2, v8}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 963
    :pswitch_1
    const v5, 0x7f020291

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    goto :goto_1

    .line 966
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 967
    const v5, 0x7f020290

    invoke-virtual {v2, v5}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 968
    invoke-virtual {v2, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_1

    .line 971
    :pswitch_3
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->disableObjectTrackingForSmartZoom()V

    .line 972
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    goto :goto_1

    .line 975
    :pswitch_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->unregisterObjectCallback()V

    .line 976
    invoke-virtual {v2, v8}, Lcom/lge/camera/components/RotateImageButton;->setBackgroundResource(I)V

    .line 977
    invoke-virtual {v2, v7}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0

    .line 991
    .restart local v0    # "convX":I
    .restart local v1    # "convY":I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v5

    if-nez v5, :cond_5

    .line 992
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 993
    .local v3, "outMetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 995
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 996
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v0, v5, p2

    .line 997
    move v1, p1

    .line 999
    .end local v3    # "outMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "wm":Landroid/view/WindowManager;
    :cond_5
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startObjectTrackingFocusForSmartZoom : convX = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", convY = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v5, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5, v0, v1}, Lcom/lge/camera/ControllerFunction;->setSmartZoomFocusViewPosition(II)V

    goto/16 :goto_0

    .line 958
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public unregisterCallback()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 513
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRegister = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    if-eqz v2, :cond_1

    .line 516
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 517
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().setAutoFocusMoveCallback(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 521
    :cond_0
    iput-boolean v5, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    .line 522
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V

    .line 524
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkFocusResigerCallBack()Z

    move-result v2

    if-nez v2, :cond_3

    .line 562
    :cond_2
    :goto_0
    return-void

    .line 528
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSamsungModel()Z

    move-result v2

    if-nez v2, :cond_2

    .line 531
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportCafCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 532
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 534
    .local v1, "focusMode":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getInCaptureProgress()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    .line 535
    const-string v2, "continuous-video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "mw_continuous-picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 539
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 540
    iget-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    if-eqz v2, :cond_2

    .line 541
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 542
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().setAutoFocusMoveCallback(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/camera/controller/FocusController;->mRegister:Z

    .line 545
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/FocusController;->setCafOnGoing(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 555
    .end local v1    # "focusMode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 548
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .restart local v1    # "focusMode":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v2, "CameraApp"

    const-string v3, "### CameraDevice().autoFocus(null) - for unRegisterCallback caf"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 558
    .end local v1    # "focusMode":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "Continuous focus not supported!"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public unregisterObjectCallback()V
    .locals 5

    .prologue
    .line 1066
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    .line 1073
    .local v1, "lgCamera":Lcom/lge/hardware/LGCamera;
    if-eqz v1, :cond_0

    .line 1074
    const-string v3, "CameraApp"

    const-string v4, "Unregister object callback"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera;->getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    .line 1076
    .local v2, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    const-string v3, "off"

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->setObjectTracking(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v2}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1079
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lge/hardware/LGCamera;->runObjectTracking()V

    .line 1080
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1081
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/hardware/LGCamera;->setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V

    .line 1086
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/camera/controller/FocusController;->mIsRegisterObjectCallback:Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1088
    .end local v1    # "lgCamera":Lcom/lge/hardware/LGCamera;
    .end local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :catch_0
    move-exception v0

    .line 1089
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "CameraApp"

    const-string v4, "unregisterObjectCallback-setParameters fail:RuntimeException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1083
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "lgCamera":Lcom/lge/hardware/LGCamera;
    .restart local v2    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/lge/hardware/LGCamera;->setOBTDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public updateFocusStateIndicator()V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator(ILjava/util/List;)V

    .line 338
    return-void
.end method

.method public updateFocusStateIndicator(ILjava/util/List;)V
    .locals 5
    .param p1, "focusState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 341
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFocusIndicator() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->isFocusIndicatorUpdateAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/FocusController;->mFocusState:I

    .line 349
    packed-switch p1, :pswitch_data_0

    .line 422
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "Wrong focus state or cannot update indicator!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->setMoveNormalFocusRectCenter()V

    .line 352
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 356
    :pswitch_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 358
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowVisibility(I)V

    goto :goto_0

    .line 360
    :cond_2
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-ne v0, v3, :cond_3

    .line 361
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 363
    :cond_3
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 369
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 373
    :pswitch_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowStatus(I)V

    goto :goto_0

    .line 376
    :cond_4
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-ne v0, v3, :cond_5

    .line 377
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 379
    :cond_5
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 385
    :pswitch_5
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 386
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->setClearFocusAnimation()V

    .line 388
    :cond_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 392
    :pswitch_6
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    iget-object v0, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowStatus(I)V

    goto :goto_0

    .line 395
    :cond_7
    iget v0, p0, Lcom/lge/camera/controller/FocusController;->mFocusPosition:I

    if-ne v0, v3, :cond_8

    .line 396
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 398
    :cond_8
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto :goto_0

    .line 405
    :pswitch_7
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/FocusController;->setFocusView(I)V

    goto/16 :goto_0

    .line 410
    :pswitch_8
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->checkMultiWindowAFCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 411
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/FocusController;->updateMultiWindowAFGuide(ILjava/util/List;)V

    goto/16 :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public updateFocusStateIndicator(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p1, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    invoke-virtual {p0}, Lcom/lge/camera/controller/FocusController;->getFocusState()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/lge/camera/controller/FocusController;->updateFocusStateIndicator(ILjava/util/List;)V

    .line 334
    return-void
.end method

.method public updateMultiWindowAFGuide(ILjava/util/List;)V
    .locals 6
    .param p1, "focusState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 447
    .local p2, "areaList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 449
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1, p2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setList(Ljava/util/List;)V

    .line 450
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->update()V

    .line 452
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Area;

    iget v1, v1, Landroid/hardware/Camera$Area;->weight:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 453
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 454
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v4, 0x5dc

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/FocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 459
    .local v0, "zoomRatio":I
    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    .line 460
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->clearAnimation()V

    .line 461
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setCenterWindowVisibility(I)V

    goto :goto_0

    .line 463
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/FocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraMultiWindowAFView;->setBackgroundDefault()V

    goto :goto_0
.end method
