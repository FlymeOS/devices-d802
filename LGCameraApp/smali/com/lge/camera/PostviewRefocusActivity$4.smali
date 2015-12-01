.class Lcom/lge/camera/PostviewRefocusActivity$4;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity;->saveRefocusImages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewRefocusActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    .prologue
    .line 914
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mIsAllinFocusShow:Z
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$1600(Lcom/lge/camera/PostviewRefocusActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 915
    const-string v16, ".jpg"

    .line 916
    .local v16, "fileExt":Ljava/lang/String;
    const/16 v17, 0x0

    .line 917
    .local v17, "resultUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v20

    .line 918
    .local v20, "savedUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    .line 919
    .local v10, "fileDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "savedFileName":Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "savedFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 923
    .local v14, "dir":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    .line 927
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 929
    .local v19, "savedFilePath":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v12

    .line 930
    .local v12, "degree":I
    new-instance v18, Ljava/io/File;

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 931
    .local v18, "savedFile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v2, v0}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 933
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->setSecureImageList(Landroid/net/Uri;Z)V

    .line 936
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v2, v2, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I
    invoke-static {v4}, Lcom/lge/camera/PostviewRefocusActivity;->access$000(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v22

    .line 938
    .local v22, "selectedFilePath":Ljava/lang/String;
    new-instance v21, Ljava/io/File;

    invoke-direct/range {v21 .. v22}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 939
    .local v21, "savingFile":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    .end local v18    # "savedFile":Ljava/io/File;
    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 940
    .restart local v18    # "savedFile":Ljava/io/File;
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v8, v8, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLongitude()D

    move-result-wide v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static/range {v2 .. v13}, Lcom/lge/camera/util/ImageManager;->insertToContentResolver(Landroid/content/ContentResolver;Ljava/lang/String;JDDLjava/lang/String;Ljava/lang/String;IZ)Landroid/net/Uri;

    move-result-object v17

    .line 955
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "result uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const-string v5, "key_uplus_box"

    invoke-virtual {v4, v5}, Lcom/lge/camera/PostviewRefocusActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4}, Lcom/lge/camera/PostviewRefocusActivity;->setSecureImageList(Landroid/net/Uri;Z)V

    .line 964
    .end local v3    # "savedFileName":Ljava/lang/String;
    .end local v10    # "fileDir":Ljava/lang/String;
    .end local v12    # "degree":I
    .end local v14    # "dir":Ljava/io/File;
    .end local v16    # "fileExt":Ljava/lang/String;
    .end local v17    # "resultUri":Landroid/net/Uri;
    .end local v18    # "savedFile":Ljava/io/File;
    .end local v19    # "savedFilePath":Ljava/lang/String;
    .end local v20    # "savedUri":Landroid/net/Uri;
    .end local v21    # "savingFile":Ljava/io/File;
    .end local v22    # "selectedFilePath":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->deleteAllTempFiles()V
    invoke-static {v2}, Lcom/lge/camera/PostviewRefocusActivity;->access$1700(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    new-instance v4, Lcom/lge/camera/PostviewRefocusActivity$4$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/lge/camera/PostviewRefocusActivity$4$1;-><init>(Lcom/lge/camera/PostviewRefocusActivity$4;)V

    invoke-virtual {v2, v4}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v15

    .line 972
    .local v15, "e":Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v2, v4, v15}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v2}, Lcom/lge/camera/PostviewRefocusActivity;->finish()V

    goto :goto_0
.end method
