.class public Lcom/lge/camera/controller/camcorder/PIPRecordingController;
.super Lcom/lge/camera/controller/PIPController;
.source "PIPRecordingController.java"


# instance fields
.field private mIsObjectTrackingEnabledForSmartZoom:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/controller/PIPController$PIPControllerFunction;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PIPController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;)V

    .line 19
    sget v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 24
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->initSmartZoomFocusViewMode()V

    .line 25
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V
    .locals 2
    .param p1, "function"    # Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
    .param p2, "x0"    # I
    .param p3, "y0"    # I
    .param p4, "x1"    # I
    .param p5, "y1"    # I

    .prologue
    .line 28
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/controller/PIPController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    .line 19
    sget v0, Lcom/lge/camera/properties/MultimediaProperties;->SMARTZOOM_FOCUS_MODE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 29
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->initSmartZoomFocusViewMode()V

    .line 30
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSmartZoomFocusViewMode()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    if-eqz v0, :cond_0

    .line 34
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public disableObjectTrackingForSmartZoom()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 58
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    .line 59
    invoke-static {v1}, Lcom/lge/filterpacks/ObjectFilter;->setObjectTrackingMode(Z)V

    .line 60
    return-void
.end method

.method public enableObjectTrackingForSmartZoom()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    iput-boolean v2, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    .line 51
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mSmartZoomFocusView:Lcom/lge/camera/components/SmartZoomFocusView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/SmartZoomFocusView;->setSmartZoomFocusViewMode(I)V

    .line 52
    invoke-static {v2}, Lcom/lge/filterpacks/ObjectFilter;->setObjectTrackingMode(Z)V

    .line 53
    return-void
.end method

.method public isObjectTrackingEnabledForSmartZoom()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->mIsObjectTrackingEnabledForSmartZoom:Z

    return v0
.end method
