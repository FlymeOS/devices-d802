.class Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;
.super Ljava/lang/Object;
.source "CameraPreview.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/CameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CameraPreviewCallback"
.end annotation


# instance fields
.field private completeFrame:Z

.field private engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

.field private mParentCallback:Landroid/hardware/Camera$PreviewCallback;

.field final synthetic this$0:Lcom/lge/camera/components/CameraPreview;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/CameraPreview;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 166
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    .line 170
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    return-void
.end method


# virtual methods
.method public closeCallback()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 190
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    .line 191
    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 192
    return-void
.end method

.method public isCompleteFrame()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    return v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 195
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    # getter for: Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    invoke-static {v3}, Lcom/lge/camera/components/CameraPreview;->access$000(Lcom/lge/camera/components/CameraPreview;)Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    # getter for: Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    invoke-static {v3}, Lcom/lge/camera/components/CameraPreview;->access$000(Lcom/lge/camera/components/CameraPreview;)Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/lge/camera/components/CameraPreview$OnDeviceListener;->isCameraDeviceClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 203
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 204
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_3

    .line 205
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 206
    .local v2, "resultWide":I
    if-eqz v1, :cond_3

    array-length v3, p1

    if-ne v2, v3, :cond_0

    .line 211
    .end local v2    # "resultWide":I
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v3}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v3

    if-nez v3, :cond_4

    .line 212
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->this$0:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v3, p1}, Lcom/lge/camera/components/CameraPreview;->processPreviewFrame([B)V

    .line 213
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    if-eqz v3, :cond_4

    .line 214
    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-interface {v3, p1, p2}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    .line 217
    :cond_4
    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 218
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    goto :goto_0
.end method

.method public setCompleteFrame(Z)V
    .locals 0
    .param p1, "set"    # Z

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->completeFrame:Z

    .line 187
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;)V
    .locals 0
    .param p1, "engine"    # Lcom/lge/olaworks/library/EngineProcessor;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->engineProcessorCallback:Lcom/lge/olaworks/library/EngineProcessor;

    .line 175
    return-void
.end method

.method public setParentPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->mParentCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 179
    return-void
.end method
