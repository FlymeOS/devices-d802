.class Lcom/lge/camera/controller/PreviewPanelController$14;
.super Ljava/lang/Thread;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->deleteImageAndUpdateThumbnail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0

    .prologue
    .line 2870
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2872
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2874
    .local v2, "filePath":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2875
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2876
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2877
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2878
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/util/SecureImageUtil;->removeSecureLockUri(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2886
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$14;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2887
    const-string v5, "CameraApp"

    const-string v6, "mDeleteThumbnailThread is isInterrupted()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2945
    :goto_1
    return-void

    .line 2882
    :catch_0
    move-exception v0

    .line 2883
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "CameraApp"

    const-string v6, "delete Thumbnail fail : "

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2891
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isTimeMachinShotSupported()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2892
    const/4 v4, 0x0

    .line 2894
    .local v4, "timeMachineTempFileDelete":Z
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isTimemachineHasPictures()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2895
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->deleteTimeMachineImages()Z

    move-result v4

    .line 2896
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setTimemachineHasPictures(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2901
    :cond_2
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    .end local v4    # "timeMachineTempFileDelete":Z
    :cond_3
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isRefocusShotSupported()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2907
    const/4 v3, 0x0

    .line 2909
    .local v3, "refocusShotTempFileDelete":Z
    :try_start_2
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_shot_mode"

    const-string v7, "shotmode_refocus"

    invoke-interface {v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isRefocusShotHasPictures()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2912
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->deleteRefocusShotImages()Z

    move-result v3

    .line 2914
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->setRefocusShotHasPictures(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2919
    :cond_4
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refocusShotTempFileDeleted ? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2925
    .end local v3    # "refocusShotTempFileDelete":Z
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$14;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2926
    const-string v5, "CameraApp"

    const-string v6, "mDeleteThumbnailThread is isInterrupted()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2898
    .restart local v4    # "timeMachineTempFileDelete":Z
    :catch_1
    move-exception v0

    .line 2899
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "CameraApp"

    const-string v6, "Exception:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2901
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "timeMachineTempFileDeleted ? = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 2916
    .end local v4    # "timeMachineTempFileDelete":Z
    .restart local v3    # "refocusShotTempFileDelete":Z
    :catch_2
    move-exception v0

    .line 2917
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "CameraApp"

    const-string v6, "Exception:"

    invoke-static {v5, v6, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2919
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refocusShotTempFileDeleted ? = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refocusShotTempFileDeleted ? = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v5

    .line 2930
    .end local v3    # "refocusShotTempFileDelete":Z
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewPanelController$14;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v5, v5, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v6, Lcom/lge/camera/controller/PreviewPanelController$14$1;

    invoke-direct {v6, p0}, Lcom/lge/camera/controller/PreviewPanelController$14$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController$14;)V

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
