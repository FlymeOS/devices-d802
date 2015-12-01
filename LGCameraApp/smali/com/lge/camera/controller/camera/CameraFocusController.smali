.class public Lcom/lge/camera/controller/camera/CameraFocusController;
.super Lcom/lge/camera/controller/FocusController;
.source "CameraFocusController.java"

# interfaces
.implements Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;
.implements Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;
.implements Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;
.implements Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;


# static fields
.field private static mPreviousFocusedState:I


# instance fields
.field protected mBlockingFaceTrFocusing:Z

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mIsContinuousFocusActive:Z

.field private mShutterButtonClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 752
    const/4 v0, 0x0

    sput v0, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/FocusController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 49
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    .line 50
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 587
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    .line 55
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraAutoFocusCallback;-><init>(Lcom/lge/camera/listeners/CameraAutoFocusCallback$CameraAutoFocusCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 56
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback;-><init>(Lcom/lge/camera/listeners/CameraAutoFocusOnCafCallback$CameraAutoFocusOnCafCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 57
    new-instance v0, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback;-><init>(Lcom/lge/camera/listeners/CameraAutoFocusMoveCallback$CameraAutoFocusMoveCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 58
    new-instance v0, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/listeners/CameraContinuousFocusCallback;-><init>(Lcom/lge/camera/listeners/CameraContinuousFocusCallback$CameraCAFCallbackFunction;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camera/CameraFocusController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camera/CameraFocusController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camera/CameraFocusController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/camera/CameraFocusController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/controller/camera/CameraFocusController;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method private autoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 231
    const-string v1, "CameraApp"

    const-string v2, "TIME CHECK : Touch AF [START] - autoFocus()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "CameraApp"

    const-string v2, "autoFocus()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0088

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraFocusView;

    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->canTakePicture()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 239
    const-string v1, "CameraApp"

    const-string v2, "Start autofocus."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    iget-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    if-nez v1, :cond_2

    .line 244
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .line 245
    iput v4, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusState:I

    .line 253
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusWindow(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 256
    const-string v1, "CameraApp"

    const-string v2, "#### TIME_CHECK call CameraDevice().autoFocus()."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_1
    :goto_1
    return-void

    .line 247
    :cond_2
    const/4 v1, 0x5

    iput v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusState:I

    goto :goto_0

    .line 250
    :cond_3
    iput v4, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusState:I

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraDevice.autoFocus() RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private canTakePicture()Z
    .locals 3

    .prologue
    .line 352
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canTakePicture() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isFocusStateIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocusAfterInitFocusArea()V
    .locals 4

    .prologue
    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 177
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#####  TIME_CHECK call getCameraDevice().cancelAutoFocus() : others, states = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "cancelAutoFocus Exception:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private checkFlashModeOff()Z
    .locals 4

    .prologue
    .line 745
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "currentSetting":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_smart_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 747
    .local v1, "smartModeSetting":Ljava/lang/String;
    const-string v2, "off"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "not found"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkFocusPosition(II)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    iget v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->PREVIEW_MARGINE_LEFT:I

    .line 526
    .local v0, "baseX":I
    const/4 v1, 0x0

    .line 527
    .local v1, "baseY":I
    iget v6, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->FOCUS_GUIDE_WIDTH:I

    add-int v3, v0, v6

    .line 528
    .local v3, "width":I
    iget v6, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->FOCUS_GUIDE_HEIGHT:I

    add-int v2, v1, v6

    .line 530
    .local v2, "height":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "face_tracking"

    iget-object v7, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_focus"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 533
    if-lt p1, v0, :cond_0

    if-gt p1, v3, :cond_0

    if-lt p2, v1, :cond_0

    if-le p2, v2, :cond_3

    .line 534
    :cond_0
    const-string v6, "CameraApp"

    const-string v7, "startFocusByTouchPress() return: %d, %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    :cond_1
    :goto_0
    return v4

    .line 538
    :cond_2
    if-lt p1, v0, :cond_1

    if-gt p1, v3, :cond_1

    if-lt p2, v1, :cond_1

    if-gt p2, v2, :cond_1

    :cond_3
    move v4, v5

    .line 542
    goto :goto_0
.end method

.method private checkStartFocusByTouchPress()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 505
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    invoke-static {v2}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_light"

    const-string v4, "on"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    :cond_0
    :goto_0
    return v0

    .line 512
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is8974Chipset()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 518
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v2, :cond_0

    move v0, v1

    .line 521
    goto :goto_0
.end method

.method private doCancelFocusingState()V
    .locals 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 137
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setBlockingFaceTrFocusing(Z)V

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "focusMode":Ljava/lang/String;
    const-string v2, "manual"

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    const-string v2, "fixed"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCameraFocusMode(Ljava/lang/String;)V

    .line 157
    .end local v1    # "focusMode":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocusAfterInitFocusArea()V

    .line 159
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 161
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isShutterButtonClicked()Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 163
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus()Z

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionSettingControllerShowing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isQuickFunctionDragControllerVisible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 172
    :cond_4
    return-void

    .line 144
    .restart local v1    # "focusMode":Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "auto"

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_focus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 146
    const-string v2, "auto"

    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCameraFocusMode(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_6
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Lcom/lge/hardware/LGCamera$LGParameters;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "defaultFocusValue":Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCameraFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doFocusing(Z)V
    .locals 7
    .param p1, "focused"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    const/4 v6, 0x1

    .line 695
    const-string v3, "face_tracking"

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 698
    .local v0, "isFaceTracking":Z
    if-eqz p1, :cond_4

    .line 699
    const-string v2, "CameraApp"

    const-string v3, "FOCUS_SUCCESS"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 702
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->playAFSound(Z)V

    .line 704
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isBlockingFaceTrFocusing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 710
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isShutterFocusLongKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 711
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v6}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 727
    :cond_1
    :goto_1
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFocusPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 729
    return-void

    .line 707
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x6

    :cond_3
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_0

    .line 715
    :cond_4
    const-string v1, "CameraApp"

    const-string v3, "FOCUS_FAIL"

    invoke-static {v1, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isTimerShotCountdown()Z

    move-result v1

    if-nez v1, :cond_5

    .line 718
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->playAFSound(Z)V

    .line 720
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isBlockingFaceTrFocusing()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 721
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 723
    :cond_6
    if-eqz v0, :cond_7

    const/4 v1, 0x7

    :goto_2
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method private isFocusStateIdle()Z
    .locals 1

    .prologue
    .line 359
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCameraFocusMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 190
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    .line 191
    .local v1, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 192
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "### setFocusMode-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 194
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 197
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_0
    :goto_0
    return-void

    .line 198
    .restart local v1    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public callbackAutoFocusOnCaf(ZLandroid/hardware/Camera;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 900
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##### AutoFocusOnCafCallback():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 911
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->startFaceDetection(Z)V

    .line 914
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/CameraFocusController$3;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/CameraFocusController$3;-><init>(Lcom/lge/camera/controller/camera/CameraFocusController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public callbackOnAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "focused"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 640
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "##### AutoFocusCallback():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v4, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TIME CHECK : Touch AF [END] - callbackOnAutoFocus ()? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    const-string v3, "FOCUS_SUCCESS"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 692
    :cond_0
    :goto_1
    return-void

    .line 641
    :cond_1
    const-string v3, "FOCUS_FAIL"

    goto :goto_0

    .line 650
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v1

    .line 653
    .local v1, "focusState":I
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 654
    .local v2, "shotMode":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFlashModeOff()Z

    move-result v3

    if-nez v3, :cond_4

    .line 655
    const-string v3, "shotmode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "not found"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 659
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFlashEnableForShotMode()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "flash":Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFlashMode(Ljava/lang/String;)V

    .line 667
    .end local v0    # "flash":Ljava/lang/String;
    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 668
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isShutterFocusLongKey()Z

    move-result v3

    if-nez v3, :cond_5

    .line 669
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v6, 0xbb8

    invoke-interface {v3, v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 672
    :cond_5
    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 674
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocusing(Z)V

    .line 676
    const-string v3, "shotmode_normal"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_timer"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getTimerCaptureDelay()I

    move-result v3

    if-lez v3, :cond_b

    .line 680
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    const-wide/16 v6, 0x64

    invoke-interface {v3, v4, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 690
    :cond_8
    :goto_4
    const-string v3, "CameraApp"

    const-string v4, "AutoFocusCallback ------------------"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFocusState() ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 659
    :cond_9
    const-string v0, "off"

    goto/16 :goto_2

    .line 663
    :cond_a
    const-string v3, "off"

    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFlashMode(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 682
    :cond_b
    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DoCapture"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    goto :goto_4

    .line 684
    :cond_c
    const/4 v3, 0x1

    if-eq v1, v3, :cond_d

    const/4 v3, 0x5

    if-ne v1, v3, :cond_e

    .line 685
    :cond_d
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocusing(Z)V

    goto :goto_4

    .line 686
    :cond_e
    if-nez v1, :cond_8

    .line 688
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    goto :goto_4
.end method

.method public callbackOnAutoFocusMove(ZLandroid/hardware/Camera;)V
    .locals 7
    .param p1, "start"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 816
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAutoFocusMoving + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " called. Could be returned without any action."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->snapshotOnContinuousFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 829
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "focusMode":Ljava/lang/String;
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 832
    if-eqz p1, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->initFocusAreas()V

    goto :goto_0

    .line 838
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getCafOnGoing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isTouchMoveFocusVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 846
    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 847
    const-string v1, "CameraApp"

    const-string v2, "focus mode is FOCUS_MODE_AUTO"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCafOnGoing(Z)V

    .line 849
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    goto :goto_0

    .line 852
    :cond_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 854
    if-eqz p1, :cond_6

    .line 855
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->initFocusAreas()V

    .line 856
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCafOnGoing(Z)V

    .line 857
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 858
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 862
    :goto_1
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 863
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    .line 877
    :goto_2
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "### onAutoFocusMoving(): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_8

    const-string v1, "START"

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getMultiWindowFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator(Ljava/util/List;)V

    .line 880
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v1

    if-nez v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/camera/CameraFocusController$2;

    invoke-direct {v2, p0, p1}, Lcom/lge/camera/controller/camera/CameraFocusController$2;-><init>(Lcom/lge/camera/controller/camera/CameraFocusController;Z)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 860
    :cond_5
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_1

    .line 865
    :cond_6
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->setCafOnGoing(Z)V

    .line 866
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMultiWindowAFCondition()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 867
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 871
    :goto_4
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v4, 0xbb8

    invoke-interface {v1, v2, v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 873
    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    goto :goto_2

    .line 869
    :cond_7
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    goto :goto_4

    .line 877
    :cond_8
    const-string v1, "END"

    goto :goto_3
.end method

.method public callbackOnCAFocus(ZLandroid/hardware/Camera;)V
    .locals 6
    .param p1, "focusedState"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x9

    const/16 v3, 0x8

    .line 755
    const-string v0, "CameraApp"

    const-string v1, "onContinuousFocus()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkMediator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getLG()Lcom/lge/hardware/LGCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 767
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isTouchMoveFocusVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### onContinuousFocus():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 774
    if-eqz p1, :cond_2

    sget v0, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    if-eq v0, v4, :cond_3

    :cond_2
    if-nez p1, :cond_4

    sget v0, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    if-ne v0, v3, :cond_4

    .line 776
    :cond_3
    sput v5, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    .line 777
    const-string v0, "CameraApp"

    const-string v1, "### onContinuousFocus(): skipped"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_4
    if-eqz p1, :cond_6

    .line 783
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 784
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 785
    sput v4, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    .line 793
    :cond_5
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    .line 794
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 795
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 797
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camera/CameraFocusController$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/camera/CameraFocusController$1;-><init>(Lcom/lge/camera/controller/camera/CameraFocusController;)V

    const-wide/16 v2, 0x320

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 788
    :cond_6
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusState(I)V

    .line 789
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 790
    sput v3, Lcom/lge/camera/controller/camera/CameraFocusController;->mPreviousFocusedState:I

    goto :goto_1
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    .line 112
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---- TIME_CHECK cancelAutoFocus(): mFocusState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize(Z)V

    .line 132
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const-string v0, "CameraApp"

    const-string v1, "Cancel autofocus : FOCUSING_SNAP_ON_FINISH : break"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->doCancelFocusingState()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public doFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 81
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFocus pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    if-eqz p1, :cond_2

    .line 83
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isFixedFocusModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusState:I

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->autoFocus()V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocus()V

    goto :goto_0
.end method

.method public doFocusOnCaf()V
    .locals 4

    .prologue
    .line 96
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "CameraApp"

    const-string v2, "## Register AutoFocus on CAF"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 100
    const-string v1, "face_tracking"

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraDevice.autoFocus() RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideFocus()Z
    .locals 3

    .prologue
    .line 417
    const-string v0, "CameraApp"

    const-string v1, "hideFocus"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->hideFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_plane_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 430
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public initFocusAreas()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 546
    const-string v2, "CameraApp"

    const-string v3, "InitFocusAreas"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    .line 550
    .local v1, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isJBPlusModel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_0

    .line 552
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 554
    :cond_0
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 572
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_1

    .line 573
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v1, v6}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 577
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    :goto_1
    return-void

    .line 556
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-nez v2, :cond_3

    .line 557
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 558
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    iget-object v4, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 561
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 562
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 563
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iget-object v2, v2, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 564
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Area;

    iput v6, v2, Landroid/hardware/Camera$Area;->weight:I

    .line 566
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_4

    .line 567
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 569
    :cond_4
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto/16 :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isBlockingFaceTrFocusing()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    return v0
.end method

.method public isContinuousFocusActivating()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    return v0
.end method

.method public isShutterButtonClicked()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    return v0
.end method

.method public isSnapOnFinish()Z
    .locals 2

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->getFocusState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchMoveFocusVisible()Z
    .locals 3

    .prologue
    .line 408
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0179

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 409
    .local v0, "v":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 410
    const/4 v1, 0x1

    .line 412
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 615
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_1

    .line 618
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraMultiWindowAFView;->destroyMultiWindowAFGuide()V

    .line 623
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraMultiWindowAFView:Lcom/lge/camera/components/CameraMultiWindowAFView;

    .line 626
    :cond_2
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    .line 627
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 628
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 629
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 630
    iput-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusOnCafCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 631
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onDestroy()V

    .line 632
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onPause()V

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    .line 65
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    .line 67
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setClearFocusAnimation()V

    .line 69
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0d0179

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .local v0, "v":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 76
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    :cond_1
    return-void
.end method

.method public registerFaceTrackingCallback()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    const-string v0, "CameraApp"

    const-string v1, "### CameraDevice().setAutoFocusMoveCallback(callback) - for registerFaceTrackingCallback caf"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "### CameraDevice().autoFocus(callback) - for registerFaceTrackingCallback caf"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mContinuousFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0
.end method

.method public setBlockingFaceTrFocusing(Z)V
    .locals 4
    .param p1, "beBlocked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 217
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### mBlockingFaceTrFocusing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 228
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->hideFocus()Z

    goto :goto_0

    .line 226
    :cond_1
    iput-boolean v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mBlockingFaceTrFocusing:Z

    goto :goto_0
.end method

.method public setContinuousFocusActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mIsContinuousFocusActive:Z

    .line 595
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 732
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v1

    .line 734
    .local v1, "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    const-string v3, "flash-mode"

    invoke-virtual {v2, v3, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :try_start_0
    invoke-virtual {v1}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    .end local v1    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_0
    :goto_0
    return-void

    .line 737
    .restart local v1    # "lgParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :catch_0
    move-exception v0

    .line 738
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParameters failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFocusWindow(Landroid/graphics/Rect;)V
    .locals 14
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, 0x44fa0000    # 2000.0f

    const/4 v11, 0x1

    .line 268
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v6

    .line 269
    .local v6, "sizeOnScreenString":Ljava/lang/String;
    invoke-static {v6}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v5

    .line 270
    .local v5, "previewSizeOnScreen":[I
    if-nez v6, :cond_1

    .line 271
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->onResume()V

    .line 272
    const-string v8, "CameraApp"

    const-string v9, "error! sizeOnScreenString is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 276
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    invoke-static {v8}, Lcom/lge/camera/properties/FunctionProperties;->isTouchAfSupported(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 277
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getLGParam()Lcom/lge/hardware/LGCamera$LGParameters;

    move-result-object v4

    .line 279
    .local v4, "lsParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    if-nez v8, :cond_2

    .line 280
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    .line 281
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    new-instance v9, Landroid/hardware/Camera$Area;

    iget-object v10, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    :cond_2
    const/4 v0, 0x0

    .local v0, "center_x":F
    const/4 v1, 0x0

    .line 288
    .local v1, "center_y":F
    const/4 v8, 0x0

    :try_start_0
    aget v8, v5, v8

    int-to-float v8, v8

    div-float v0, v8, v13

    .line 289
    const/4 v8, 0x1

    aget v8, v5, v8

    int-to-float v8, v8

    div-float v1, v8, v13

    .line 291
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    sub-float/2addr v8, v0

    mul-float/2addr v8, v12

    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 292
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    mul-float/2addr v8, v12

    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 293
    iget v8, p1, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    sub-float/2addr v8, v0

    mul-float/2addr v8, v12

    const/4 v9, 0x0

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 295
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    sub-float/2addr v8, v1

    mul-float/2addr v8, v12

    const/4 v9, 0x1

    aget v9, v5, v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 298
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-ne v8, v11, :cond_3

    .line 300
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 301
    .local v7, "tmprect":Landroid/graphics/Rect;
    iget v8, v7, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 302
    iget v8, v7, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v8, v8, -0x1

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 307
    .end local v7    # "tmprect":Landroid/graphics/Rect;
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-nez v8, :cond_5

    .line 309
    :cond_4
    iget v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->RECTANGLE_WIDTH:I

    mul-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 310
    iget v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->RECTANGLE_WIDTH:I

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 311
    iget v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->RECTANGLE_HEIGHT:I

    mul-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 312
    iget v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->RECTANGLE_HEIGHT:I

    div-int/lit8 v8, v8, 0x2

    iput v8, p1, Landroid/graphics/Rect;->bottom:I

    .line 316
    :cond_5
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->left:I

    iput v9, v8, Landroid/graphics/Rect;->left:I

    .line 317
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->right:I

    iput v9, v8, Landroid/graphics/Rect;->right:I

    .line 318
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 319
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    iget-object v8, v8, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    .line 320
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Area;

    const/4 v9, 0x1

    iput v9, v8, Landroid/hardware/Camera$Area;->weight:I

    .line 322
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v8

    if-nez v8, :cond_6

    .line 323
    iget-object v8, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9}, Lcom/lge/camera/ControllerFunction;->setEnable3ALocks(Lcom/lge/hardware/LGCamera$LGParameters;Z)Z

    .line 324
    invoke-virtual {v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 325
    const-string v3, "auto"

    .line 327
    .local v3, "focusMode":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 328
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### setFocusMode-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v3    # "focusMode":Ljava/lang/String;
    :cond_6
    invoke-virtual {v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusArea:Ljava/util/List;

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 333
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 334
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/lge/camera/controller/camera/CameraFocusController;->setContinuousFocusActive(Z)V

    .line 336
    :cond_7
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusWindow : left "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " top "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setFocusWindow : right "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bottom "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v4}, Lcom/lge/hardware/LGCamera$LGParameters;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/lge/hardware/LGCamera$LGParameters;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 341
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "CameraApp"

    const-string v9, "setTouchIndexAf setParameter exception : "

    invoke-static {v8, v9, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 346
    .end local v0    # "center_x":F
    .end local v1    # "center_y":F
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "lsParameters":Lcom/lge/hardware/LGCamera$LGParameters;
    :cond_8
    const-string v8, "CameraApp"

    const-string v9, "mCameraDevice is null"

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setShutterButtonClicked(Z)V
    .locals 0
    .param p1, "clicked"    # Z

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mShutterButtonClicked:Z

    .line 210
    return-void
.end method

.method public showFocus()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    move-result v0

    return v0
.end method

.method public showFocus(Z)Z
    .locals 5
    .param p1, "justDoIt"    # Z

    .prologue
    const/4 v1, 0x1

    .line 367
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showFocus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "focus":Ljava/lang/String;
    const-string v2, "face_tracking"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-nez v2, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->isBlockingFaceTrFocusing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 372
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    .line 404
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 374
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    goto :goto_0

    .line 376
    :cond_2
    const-string v2, "manual"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 377
    const-string v2, "CameraApp"

    const-string v3, "showFocus : manual focus."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->unregisterCallback()V

    .line 379
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto :goto_1

    .line 382
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_0

    .line 384
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 385
    if-nez p1, :cond_5

    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_plane_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/lge/camera/properties/FunctionProperties;->isCafAnimationSupported(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    const-string v2, "CameraApp"

    const-string v3, "showFocus & register "

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->registerCallback()V

    goto :goto_1

    .line 399
    :cond_6
    invoke-super {p0}, Lcom/lge/camera/controller/FocusController;->showFocus()Z

    goto/16 :goto_1
.end method

.method public startAEByTouchPress(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 470
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkStartFocusByTouchPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFocusPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    if-eqz v0, :cond_3

    .line 479
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mCameraFocusView:Lcom/lge/camera/components/CameraFocusView;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraFocusView;->setVisibility(I)V

    .line 480
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusView(I)V

    .line 485
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 487
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 490
    :cond_2
    invoke-super {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 491
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 493
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusRectangleInitialize()V

    .line 495
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusPosition(I)V

    .line 496
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setMoveNormalFocusRect(II)V

    .line 497
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusWindow(Landroid/graphics/Rect;)V

    .line 498
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->updateFocusStateIndicator()V

    .line 499
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->removeScheduledCommand(Ljava/lang/String;)V

    .line 500
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.ReleaseTouchFocus"

    const-wide/16 v2, 0xbb8

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 501
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------startAEByTouchPress : x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 482
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "TAE mCameraFocusView is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFocusByTouchPress(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 441
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkStartFocusByTouchPress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->checkFocusPosition(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraFocusController;->cancelAutoFocusAfterInitFocusArea()V

    .line 450
    invoke-super {p0, v1}, Lcom/lge/camera/controller/FocusController;->setFocusState(I)V

    .line 452
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocus(Z)V

    .line 454
    iget-boolean v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isFaceDetectionAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 458
    :cond_2
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setFocusPosition(I)V

    .line 459
    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/camera/CameraFocusController;->showFocus(Z)Z

    .line 461
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->setMoveNormalFocusRect(II)V

    .line 463
    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/camera/CameraFocusController;->doFocus(Z)V

    .line 464
    iput-boolean v1, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    .line 465
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------startFocusByTouchPress : x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startFocusByTouchPress(IIZ)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "bTouchedAFbyFaceTr"    # Z

    .prologue
    .line 435
    iput-boolean p3, p0, Lcom/lge/camera/controller/camera/CameraFocusController;->mTouchedAFbyFaceTr:Z

    .line 436
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/camera/CameraFocusController;->startFocusByTouchPress(II)V

    .line 437
    return-void
.end method
