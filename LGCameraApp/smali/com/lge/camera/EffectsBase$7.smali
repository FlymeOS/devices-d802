.class Lcom/lge/camera/EffectsBase$7;
.super Ljava/lang/Object;
.source "EffectsBase.java"

# interfaces
.implements Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/EffectsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/EffectsBase;


# direct methods
.method constructor <init>(Lcom/lge/camera/EffectsBase;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkTextureSourceAndState(Landroid/graphics/SurfaceTexture;)Z
    .locals 7
    .param p1, "source"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 1091
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-nez v2, :cond_1

    .line 1095
    const-string v2, "CameraApp"

    const-string v3, "Ready callback: Already stopped, skipping."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_0
    :goto_0
    return v1

    .line 1098
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 1101
    const-string v2, "CameraApp"

    const-string v3, "Ready callback: Already released, skipping."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1104
    :cond_2
    if-nez p1, :cond_5

    .line 1105
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v2, v5, :cond_0

    .line 1112
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v2, v5, :cond_4

    .line 1113
    const-string v2, "CameraApp"

    const-string v3, "### EffectsBase mCameraDevice.stopPreview() and return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 1124
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, v2, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v2, v2, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    invoke-virtual {v1, v2, v6}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1127
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to disconnect camera from effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1117
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    const-string v2, "CameraApp"

    const-string v3, "### EffectsBase state is STATE_RECORD, set STATE_PREVIEW"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iput v4, v2, Lcom/lge/camera/EffectsBase;->mState:I

    .line 1120
    iget-object v2, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v3, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v3, v3, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    invoke-virtual {v2, v3, v6}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    goto :goto_1

    .line 1133
    :cond_5
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setPreviewSizeByModel(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Ljava/lang/String;)V
    .locals 6
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "oldSizeOnDevice"    # Landroid/hardware/Camera$Size;
    .param p3, "recordSize"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1081
    invoke-static {p3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 1082
    .local v0, "previewSizeOnDevice":[I
    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    aget v2, v0, v4

    if-ne v1, v2, :cond_0

    iget v1, p2, Landroid/hardware/Camera$Size;->height:I

    aget v2, v0, v5

    if-eq v1, v2, :cond_1

    .line 1084
    :cond_0
    aget v1, v0, v4

    aget v2, v0, v5

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1085
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### reset Preview size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    :cond_1
    return-void
.end method


# virtual methods
.method public onSurfaceTextureSourceReady(Landroid/graphics/SurfaceTexture;)V
    .locals 11
    .param p1, "source"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    .line 993
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "##### onsurfaceTextureSourceReady callback (SourceReadyCallback) received: state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v8, v8, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",source:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    if-eqz p1, :cond_0

    .line 997
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    # invokes: Lcom/lge/camera/EffectsBase;->awaitLatch()V
    invoke-static {v6}, Lcom/lge/camera/EffectsBase;->access$100(Lcom/lge/camera/EffectsBase;)V

    .line 999
    :cond_0
    iget-object v7, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    monitor-enter v7

    .line 1000
    if-eqz p1, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v6}, Lcom/lge/camera/EffectsBase;->access$200(Lcom/lge/camera/EffectsBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    if-ne p1, v6, :cond_1

    .line 1001
    const-string v6, "CameraApp"

    const-string v8, "source is same with mTextureSource, return."

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    monitor-exit v7

    .line 1077
    :goto_0
    return-void

    .line 1004
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    # setter for: Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v6, p1}, Lcom/lge/camera/EffectsBase;->access$202(Lcom/lge/camera/EffectsBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 1006
    invoke-direct {p0, p1}, Lcom/lge/camera/EffectsBase$7;->checkTextureSourceAndState(Landroid/graphics/SurfaceTexture;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1007
    if-nez p1, :cond_2

    .line 1008
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    # invokes: Lcom/lge/camera/EffectsBase;->countDownLatch()V
    invoke-static {v6}, Lcom/lge/camera/EffectsBase;->access$300(Lcom/lge/camera/EffectsBase;)V

    .line 1010
    :cond_2
    monitor-exit v7

    goto :goto_0

    .line 1076
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1014
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    .line 1015
    const-string v6, "CameraApp"

    const-string v8, "### EffectsBase mCameraDevice.stopPreview()"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V

    .line 1017
    const-string v6, "CameraApp"

    const-string v8, "Runner active, connecting effects preview"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1019
    :try_start_2
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v8, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    # getter for: Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;
    invoke-static {v8}, Lcom/lge/camera/EffectsBase;->access$200(Lcom/lge/camera/EffectsBase;)Landroid/graphics/SurfaceTexture;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1025
    :try_start_3
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1026
    .local v2, "params":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1027
    .local v1, "oldSizeOnDevice":Landroid/hardware/Camera$Size;
    if-nez v1, :cond_4

    .line 1028
    const-string v6, "CameraApp"

    const-string v8, "oldSizeOnDevice is Null"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    monitor-exit v7

    goto :goto_0

    .line 1020
    .end local v1    # "oldSizeOnDevice":Landroid/hardware/Camera$Size;
    .end local v2    # "params":Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v0

    .line 1021
    .local v0, "e":Ljava/io/IOException;
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v8, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v8, v8, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v9, 0x6

    invoke-virtual {v6, v8, v9}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1022
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v8, "Unable to connect camera to effect input"

    invoke-direct {v6, v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1034
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "oldSizeOnDevice":Landroid/hardware/Camera$Size;
    .restart local v2    # "params":Landroid/hardware/Camera$Parameters;
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v8, v8, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v8, v8, Lcom/lge/media/CamcorderProfileEx;->videoFrameWidth:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v8, v8, Lcom/lge/camera/EffectsBase;->mProfile:Lcom/lge/media/CamcorderProfileEx;

    iget v8, v8, Lcom/lge/media/CamcorderProfileEx;->videoFrameHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1036
    .local v4, "profileVideoSize":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v6, v6, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v6, v9, :cond_5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v6, v6, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v6, v10, :cond_6

    .line 1037
    :cond_5
    invoke-static {v4}, Lcom/lge/camera/properties/MultimediaProperties;->getDualRecordingResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1039
    .local v5, "recordSize":Ljava/lang/String;
    move-object v3, v5

    .line 1041
    .local v3, "previewSizeOnDevice":Ljava/lang/String;
    const-string v6, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mProfile.video size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v6, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "record size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :goto_1
    invoke-direct {p0, v2, v1, v3}, Lcom/lge/camera/EffectsBase$7;->setPreviewSizeByModel(Landroid/hardware/Camera$Parameters;Landroid/hardware/Camera$Size;Ljava/lang/String;)V

    .line 1063
    const-string v6, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "### set video-size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string v6, "video-size"

    invoke-virtual {v2, v6, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1067
    const-string v6, "CameraApp"

    const-string v8, "### EffectsBase mCameraDevice.startPreview()"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v6, v6, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 1071
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    .line 1073
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    const/4 v8, 0x3

    iput v8, v6, Lcom/lge/camera/EffectsBase;->mState:I

    .line 1074
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget-object v8, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v8, v8, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v9, 0x5

    invoke-virtual {v6, v8, v9}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1075
    const-string v6, "CameraApp"

    const-string v8, "Start preview/effect switch complete"

    invoke-static {v6, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    monitor-exit v7

    goto/16 :goto_0

    .line 1043
    .end local v3    # "previewSizeOnDevice":Ljava/lang/String;
    .end local v5    # "recordSize":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v6, v6, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v8, 0x7

    if-ne v6, v8, :cond_8

    .line 1044
    invoke-static {v4}, Lcom/lge/camera/properties/MultimediaProperties;->getSmartZoomResolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1047
    .restart local v5    # "recordSize":Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1048
    const-string v3, "2104x1560"

    .restart local v3    # "previewSizeOnDevice":Ljava/lang/String;
    goto :goto_1

    .line 1051
    .end local v3    # "previewSizeOnDevice":Ljava/lang/String;
    :cond_7
    const-string v3, "2104x1184"

    .restart local v3    # "previewSizeOnDevice":Ljava/lang/String;
    goto :goto_1

    .line 1055
    .end local v3    # "previewSizeOnDevice":Ljava/lang/String;
    .end local v5    # "recordSize":Ljava/lang/String;
    :cond_8
    iget-object v6, p0, Lcom/lge/camera/EffectsBase$7;->this$0:Lcom/lge/camera/EffectsBase;

    iget v6, v6, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    invoke-static {v6}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v5

    .line 1057
    .restart local v5    # "recordSize":Ljava/lang/String;
    move-object v3, v5

    .restart local v3    # "previewSizeOnDevice":Ljava/lang/String;
    goto :goto_1
.end method
