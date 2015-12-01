.class Lcom/lge/camera/module/MainBeautyShot$1;
.super Ljava/lang/Object;
.source "MainBeautyShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/MainBeautyShot;->jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/MainBeautyShot;

.field final synthetic val$jpegData:[B


# direct methods
.method constructor <init>(Lcom/lge/camera/module/MainBeautyShot;[B)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iput-object p2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 100
    const/4 v1, 0x0

    .line 101
    .local v1, "isSuccessSave":Z
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v3, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    invoke-virtual {v2, v3}, Lcom/lge/camera/module/MainBeautyShot;->processFinalJpegData([B)[B

    move-result-object v0

    .line 103
    .local v0, "finalJpegData":[B
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 104
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "error!! MainBeautyShot-onPictureTaken (jpegData == null)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    if-nez v2, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/MainBeautyShot;->jpegPictureCallbackError()V

    .line 109
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/MainBeautyShot;->releaseBeautyshotJpegCallback()V

    .line 150
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    invoke-virtual {v2, v1}, Lcom/lge/camera/module/MainBeautyShot;->processJpegCallbackAfter(Z)V

    goto :goto_0

    .line 114
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalJpegData size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "], jpegData size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->val$jpegData:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    const/16 v3, -0x28

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 118
    const-string v2, "CameraApp"

    const-string v3, "error!! MainBeautyShot abnormal jpegData stream"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    invoke-virtual {v2}, Lcom/lge/camera/module/MainBeautyShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 122
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/module/MainBeautyShot$1;->this$0:Lcom/lge/camera/module/MainBeautyShot;

    iget-object v2, v2, Lcom/lge/camera/module/MainBeautyShot;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/module/MainBeautyShot$1$1;

    invoke-direct {v3, p0, v0}, Lcom/lge/camera/module/MainBeautyShot$1$1;-><init>(Lcom/lge/camera/module/MainBeautyShot$1;[B)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
