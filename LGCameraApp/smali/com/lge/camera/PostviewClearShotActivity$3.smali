.class Lcom/lge/camera/PostviewClearShotActivity$3;
.super Ljava/lang/Object;
.source "PostviewClearShotActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewClearShotActivity;->saveClearShotImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewClearShotActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewClearShotActivity;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 37

    .prologue
    .line 767
    :try_start_0
    const-string v23, ".jpg"

    .line 768
    .local v23, "fileExt":Ljava/lang/String;
    const/16 v30, 0x0

    .line 769
    .local v30, "newFilePath":Ljava/lang/String;
    const/4 v12, 0x0

    .line 770
    .local v12, "newFileDir":Ljava/lang/String;
    const/4 v5, 0x0

    .line 771
    .local v5, "newFileName":Ljava/lang/String;
    const/16 v29, 0x0

    .line 772
    .local v29, "newFile":Ljava/io/File;
    const/16 v34, 0x0

    .line 774
    .local v34, "resultUri":Landroid/net/Uri;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 776
    .local v18, "dateTaken":J
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v4

    const-string v6, "shotmode_clear_shot"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const-string v8, "key_scene_mode"

    invoke-virtual {v7, v8}, Lcom/lge/camera/PostviewClearShotActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/lge/camera/util/FileNamer;->markTakeTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/PostviewClearShotActivity;->access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_1

    .line 780
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/PostviewClearShotActivity;->access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Z

    move-object/from16 v36, v0

    .line 781
    .local v36, "tempArr":[Z
    const/16 v28, 0x0

    .line 782
    .local v28, "j":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mObjectInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/lge/camera/PostviewClearShotActivity;->access$800(Lcom/lge/camera/PostviewClearShotActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;

    .line 783
    .local v31, "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveClearShotImages: index() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getObjectTagIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", selected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getSelected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {v31 .. v31}, Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;->getSelected()Z

    move-result v4

    aput-boolean v4, v36, v28

    .line 790
    add-int/lit8 v28, v28, 0x1

    .line 791
    goto :goto_0

    .line 792
    .end local v31    # "objectInfo":Lcom/lge/camera/PostviewClearShotActivity$ObjectInfoLayout;
    :cond_0
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->setObjectList([Z)V

    .line 795
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v28    # "j":I
    .end local v36    # "tempArr":[Z
    :cond_1
    invoke-static {}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->getInstance()Lcom/lge/almalence/app/clearshot/AlmaCLRShot;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/almalence/app/clearshot/AlmaCLRShot;->processingSaveData()[B

    move-result-object v35

    .line 798
    .local v35, "saveBuffer":[B
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewClearShotActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .end local v5    # "newFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v7, v7, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v8, v8, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "shotmode_clear_shot"

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/lge/camera/util/FileNamer;->getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    .line 805
    .restart local v5    # "newFileName":Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "newFileName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v4, v4, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v12

    .line 808
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 809
    new-instance v29, Ljava/io/File;

    .end local v29    # "newFile":Ljava/io/File;
    invoke-direct/range {v29 .. v30}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 811
    .restart local v29    # "newFile":Ljava/io/File;
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Rename clear shot newFilePath = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 815
    .local v17, "dir":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 816
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 818
    :cond_2
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 819
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 821
    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-static {v0, v12, v5, v1}, Lcom/lge/camera/util/ImageManager;->saveTempFileForTimeMachineShot([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "ClearShotImage1"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 828
    .local v33, "originalFilePath":Ljava/lang/String;
    new-instance v32, Landroid/media/ExifInterface;

    invoke-direct/range {v32 .. v33}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 830
    .local v32, "originalExif":Landroid/media/ExifInterface;
    new-instance v24, Landroid/media/ExifInterface;

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 832
    .local v24, "finalExif":Landroid/media/ExifInterface;
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v21, v0

    const/4 v4, 0x0

    const-string v6, "ImageLength"

    aput-object v6, v21, v4

    const/4 v4, 0x1

    const-string v6, "ImageWidth"

    aput-object v6, v21, v4

    .line 835
    .local v21, "exceptionTags":[Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/lge/camera/util/ExifUtil;->copyExif(Landroid/media/ExifInterface;Landroid/media/ExifInterface;[Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {v24 .. v24}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewClearShotActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLatitude()D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLongitude()D

    move-result-wide v10

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    # getter for: Lcom/lge/camera/PostviewClearShotActivity;->mImageDegree:I
    invoke-static {v6}, Lcom/lge/camera/PostviewClearShotActivity;->access$900(Lcom/lge/camera/PostviewClearShotActivity;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const-string v7, "key_camera_shot_mode"

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewClearShotActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "shotmode_full_continuous"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    move-wide/from16 v6, v18

    invoke-static/range {v4 .. v15}, Lcom/lge/camera/util/ImageManager;->insertToContentResolver(Landroid/content/ContentResolver;Ljava/lang/String;JDDLjava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v34

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewClearShotActivity;->getActivity()Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const-string v7, "key_uplus_box"

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewClearShotActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    const/4 v6, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v6}, Lcom/lge/camera/PostviewClearShotActivity;->setSecureImageList(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 862
    .end local v21    # "exceptionTags":[Ljava/lang/String;
    .end local v24    # "finalExif":Landroid/media/ExifInterface;
    .end local v32    # "originalExif":Landroid/media/ExifInterface;
    .end local v33    # "originalFilePath":Ljava/lang/String;
    :cond_3
    const/16 v16, 0x0

    .line 863
    .local v16, "clearShotFilename":Ljava/lang/String;
    const/16 v25, 0x0

    .line 865
    .local v25, "fullFilePath":Ljava/lang/String;
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_1
    const/4 v4, 0x6

    move/from16 v0, v26

    if-ge v0, v4, :cond_6

    .line 866
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClearShotImage"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v6, v26, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 868
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewClearShotActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".jpg"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 873
    invoke-static/range {v25 .. v25}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 874
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v22, "file":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_4

    .line 876
    const-string v4, "CameraApp"

    const-string v6, "clear shot temp file delete fail."

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    .end local v22    # "file":Ljava/io/File;
    :cond_4
    :goto_2
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 880
    :cond_5
    const-string v4, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file is not exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 884
    :catch_0
    move-exception v20

    .line 885
    .local v20, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "CameraApp"

    const-string v6, "deleteClearShotImages fail!:"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    .end local v20    # "e":Ljava/lang/Exception;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    new-instance v6, Lcom/lge/camera/PostviewClearShotActivity$3$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/lge/camera/PostviewClearShotActivity$3$1;-><init>(Lcom/lge/camera/PostviewClearShotActivity$3;)V

    invoke-virtual {v4, v6}, Lcom/lge/camera/PostviewClearShotActivity;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 899
    .end local v5    # "newFileName":Ljava/lang/String;
    .end local v12    # "newFileDir":Ljava/lang/String;
    .end local v16    # "clearShotFilename":Ljava/lang/String;
    .end local v17    # "dir":Ljava/io/File;
    .end local v18    # "dateTaken":J
    .end local v23    # "fileExt":Ljava/lang/String;
    .end local v25    # "fullFilePath":Ljava/lang/String;
    .end local v26    # "i":I
    .end local v29    # "newFile":Ljava/io/File;
    .end local v30    # "newFilePath":Ljava/lang/String;
    .end local v34    # "resultUri":Landroid/net/Uri;
    .end local v35    # "saveBuffer":[B
    :goto_3
    return-void

    .line 895
    :catch_1
    move-exception v20

    .line 896
    .restart local v20    # "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v6, "Exception!"

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewClearShotActivity$3;->this$0:Lcom/lge/camera/PostviewClearShotActivity;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewClearShotActivity;->finish()V

    goto :goto_3
.end method
