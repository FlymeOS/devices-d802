.class Landroid/hardware/Camera$EventHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field final synthetic this$0:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V
    .locals 0
    .param p2, "c"    # Landroid/hardware/Camera;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1189
    iput-object p1, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    .line 1190
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1191
    iput-object p2, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    .line 1192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v12, 0x101

    const/4 v11, 0x1

    const/4 v9, 0x0

    .line 1196
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 1335
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown message type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1198
    :sswitch_0
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1199
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;

    move-result-object v10

    invoke-interface {v10}, Landroid/hardware/Camera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1204
    :sswitch_1
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1205
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    check-cast v10, [B

    iget-object v12, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v11, v10, v12}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1210
    :sswitch_2
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1211
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    check-cast v10, [B

    iget-object v12, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v11, v10, v12}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1216
    :sswitch_3
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v5

    .line 1217
    .local v5, "pCb":Landroid/hardware/Camera$PreviewCallback;
    if-eqz v5, :cond_0

    .line 1218
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOneShot:Z
    invoke-static {v10}, Landroid/hardware/Camera;->access$400(Landroid/hardware/Camera;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1222
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    const/4 v11, 0x0

    # setter for: Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;
    invoke-static {v10, v11}, Landroid/hardware/Camera;->access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;

    .line 1229
    :cond_1
    :goto_1
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    check-cast v10, [B

    iget-object v11, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v5, v10, v11}, Landroid/hardware/Camera$PreviewCallback;->onPreviewFrame([BLandroid/hardware/Camera;)V

    goto :goto_0

    .line 1223
    :cond_2
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mWithBuffer:Z
    invoke-static {v10}, Landroid/hardware/Camera;->access$500(Landroid/hardware/Camera;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1227
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # invokes: Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V
    invoke-static {v10, v11, v9}, Landroid/hardware/Camera;->access$600(Landroid/hardware/Camera;ZZ)V

    goto :goto_1

    .line 1234
    .end local v5    # "pCb":Landroid/hardware/Camera$PreviewCallback;
    :sswitch_4
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1235
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    check-cast v10, [B

    iget-object v12, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v11, v10, v12}, Landroid/hardware/Camera$PictureCallback;->onPictureTaken([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1240
    :sswitch_5
    const/4 v1, 0x0

    .line 1241
    .local v1, "cb":Landroid/hardware/Camera$AutoFocusCallback;
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v10}, Landroid/hardware/Camera;->access$800(Landroid/hardware/Camera;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 1242
    :try_start_0
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;

    move-result-object v1

    .line 1243
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    if-eqz v1, :cond_0

    .line 1245
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-nez v10, :cond_3

    .line 1246
    .local v9, "success":Z
    :goto_2
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v1, v9, v10}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1243
    .end local v9    # "success":Z
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    :cond_3
    move v9, v11

    .line 1245
    goto :goto_2

    .line 1251
    .end local v1    # "cb":Landroid/hardware/Camera$AutoFocusCallback;
    :sswitch_6
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1252
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;

    move-result-object v10

    iget v12, p1, Landroid/os/Message;->arg1:I

    iget v13, p1, Landroid/os/Message;->arg2:I

    if-eqz v13, :cond_4

    :goto_3
    iget-object v13, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v12, v11, v13}, Landroid/hardware/Camera$OnZoomChangeListener;->onZoomChange(IZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_4
    move v11, v9

    goto :goto_3

    .line 1257
    :sswitch_7
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1258
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [Landroid/hardware/Camera$Face;

    check-cast v10, [Landroid/hardware/Camera$Face;

    iget-object v12, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v11, v10, v12}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1263
    :sswitch_8
    const-string v10, "Camera"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1265
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;

    move-result-object v10

    iget v11, p1, Landroid/os/Message;->arg1:I

    iget-object v12, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v11, v12}, Landroid/hardware/Camera$ErrorCallback;->onError(ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1270
    :sswitch_9
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1271
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;

    move-result-object v10

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-nez v12, :cond_5

    :goto_4
    iget-object v11, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v9, v11}, Landroid/hardware/Camera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLandroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_5
    move v9, v11

    goto :goto_4

    .line 1276
    :sswitch_a
    new-array v8, v12, [I

    .line 1277
    .local v8, "statsdata":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v12, :cond_6

    .line 1278
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    check-cast v10, [B

    mul-int/lit8 v11, v4, 0x4

    # invokes: Landroid/hardware/Camera;->byteToInt([BI)I
    invoke-static {v10, v11}, Landroid/hardware/Camera;->access$1400([BI)I

    move-result v10

    aput v10, v8, v4

    .line 1277
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1280
    :cond_6
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1281
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v8, v11}, Landroid/hardware/Camera$CameraDataCallback;->onCameraData([ILandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1286
    .end local v4    # "i":I
    .end local v8    # "statsdata":[I
    :sswitch_b
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1287
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;

    move-result-object v11

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    check-cast v10, [B

    iget-object v12, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v11, v10, v12}, Landroid/hardware/Camera$CameraMetaDataCallback;->onCameraMetaData([BLandroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1293
    :sswitch_c
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOisDataListener:Landroid/hardware/Camera$OisDataListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisDataListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1294
    new-instance v2, Landroid/hardware/Camera$OisData;

    invoke-direct {v2}, Landroid/hardware/Camera$OisData;-><init>()V

    .line 1295
    .local v2, "data":Landroid/hardware/Camera$OisData;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    .line 1296
    .local v0, "byteData":[B
    const/4 v6, 0x0

    .line 1297
    .local v6, "ptr":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .local v7, "ptr":I
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v12, v0, v7

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int v3, v10, v12

    .line 1298
    .local v3, "dim":I
    const/4 v10, 0x3

    if-gt v3, v10, :cond_7

    if-gez v3, :cond_8

    :cond_7
    const/4 v3, 0x0

    .line 1299
    :cond_8
    new-array v10, v3, [I

    iput-object v10, v2, Landroid/hardware/Camera$OisData;->gyro:[I

    .line 1300
    new-array v10, v3, [I

    iput-object v10, v2, Landroid/hardware/Camera$OisData;->lens_target:[I

    .line 1301
    new-array v10, v3, [I

    iput-object v10, v2, Landroid/hardware/Camera$OisData;->lens_position:[I

    .line 1302
    const/4 v4, 0x0

    .restart local v4    # "i":I
    move v7, v6

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    :goto_6
    if-ge v4, v3, :cond_9

    .line 1304
    iget-object v10, v2, Landroid/hardware/Camera$OisData;->gyro:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v12, v0, v7

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v13, v0, v6

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput v12, v10, v4

    .line 1305
    iget-object v10, v2, Landroid/hardware/Camera$OisData;->lens_target:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v12, v0, v7

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v13, v0, v6

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput v12, v10, v4

    .line 1306
    iget-object v10, v2, Landroid/hardware/Camera$OisData;->lens_position:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v12, v0, v7

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v13, v0, v6

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v12, v13

    int-to-short v12, v12

    aput v12, v10, v4

    .line 1302
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1308
    :cond_9
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v10, v0, v7

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v12, v0, v6

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v10, v12

    if-lez v10, :cond_a

    :goto_7
    iput-boolean v11, v2, Landroid/hardware/Camera$OisData;->is_valid:Z

    .line 1309
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mOisDataListener:Landroid/hardware/Camera$OisDataListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$OisDataListener;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v2, v11}, Landroid/hardware/Camera$OisDataListener;->onDataListen(Landroid/hardware/Camera$OisData;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    :cond_a
    move v11, v9

    .line 1308
    goto :goto_7

    .line 1316
    .end local v0    # "byteData":[B
    .end local v2    # "data":Landroid/hardware/Camera$OisData;
    .end local v3    # "dim":I
    .end local v4    # "i":I
    .end local v7    # "ptr":I
    :sswitch_d
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mProxyDataListener:Landroid/hardware/Camera$ProxyDataListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ProxyDataListener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 1317
    new-instance v2, Landroid/hardware/Camera$ProxyData;

    invoke-direct {v2}, Landroid/hardware/Camera$ProxyData;-><init>()V

    .line 1318
    .local v2, "data":Landroid/hardware/Camera$ProxyData;
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, [B

    move-object v0, v10

    check-cast v0, [B

    .line 1319
    .restart local v0    # "byteData":[B
    const/4 v6, 0x0

    .line 1320
    .restart local v6    # "ptr":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v0, v6

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    iput v10, v2, Landroid/hardware/Camera$ProxyData;->val:I

    .line 1322
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v0, v6

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    iput v10, v2, Landroid/hardware/Camera$ProxyData;->conv:I

    .line 1324
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v0, v6

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    iput v10, v2, Landroid/hardware/Camera$ProxyData;->sig:I

    .line 1326
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v0, v6

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    iput v10, v2, Landroid/hardware/Camera$ProxyData;->amb:I

    .line 1328
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v10, v0, v6

    and-int/lit16 v10, v10, 0xff

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "ptr":I
    .restart local v7    # "ptr":I
    aget-byte v11, v0, v6

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "ptr":I
    .restart local v6    # "ptr":I
    aget-byte v11, v0, v7

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x18

    or-int/2addr v10, v11

    iput v10, v2, Landroid/hardware/Camera$ProxyData;->raw:I

    .line 1330
    iget-object v10, p0, Landroid/hardware/Camera$EventHandler;->this$0:Landroid/hardware/Camera;

    # getter for: Landroid/hardware/Camera;->mProxyDataListener:Landroid/hardware/Camera$ProxyDataListener;
    invoke-static {v10}, Landroid/hardware/Camera;->access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ProxyDataListener;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/Camera$EventHandler;->mCamera:Landroid/hardware/Camera;

    invoke-interface {v10, v2, v11}, Landroid/hardware/Camera$ProxyDataListener;->onDataListen(Landroid/hardware/Camera$ProxyData;Landroid/hardware/Camera;)V

    goto/16 :goto_0

    .line 1196
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_b
        0x4000 -> :sswitch_c
        0x8000 -> :sswitch_d
    .end sparse-switch
.end method
