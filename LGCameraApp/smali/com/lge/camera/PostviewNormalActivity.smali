.class public Lcom/lge/camera/PostviewNormalActivity;
.super Lcom/lge/camera/ShotPostviewActivity;
.source "PostviewNormalActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkValidateImage()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 208
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v3, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v5, v3}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "tempFilePath":Ljava/lang/String;
    if-nez v2, :cond_0

    move v3, v4

    .line 223
    .end local v2    # "tempFilePath":Ljava/lang/String;
    :goto_0
    return v3

    .line 214
    .restart local v2    # "tempFilePath":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 216
    iget-object v3, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 217
    goto :goto_0

    .line 220
    .end local v1    # "tempFile":Ljava/io/File;
    .end local v2    # "tempFilePath":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v5, "Exception!"

    invoke-static {v3, v5, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 223
    goto :goto_0
.end method

.method protected deleteFinished()V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 230
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "delete_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 231
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewNormalActivity;->setResult(ILandroid/content/Intent;)V

    .line 232
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->finish()V

    .line 233
    return-void
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 237
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-boolean v0, p0, Lcom/lge/camera/PostviewNormalActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->finish()V

    goto :goto_0
.end method

.method public doDeletePositiveClick()V
    .locals 4

    .prologue
    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Lcom/lge/camera/PostviewNormalActivity;->deleteImage(Ljava/lang/String;Landroid/net/Uri;)I

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->deleteFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doPreProcessOnCreate()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected doProcessOnCreate()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/PostviewNormalActivity;->isFromCreateProcess:Z

    .line 41
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected doProcessOnResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iget-boolean v0, p0, Lcom/lge/camera/PostviewNormalActivity;->isFromCreateProcess:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->checkValidateImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/lge/camera/PostviewNormalActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewNormalActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 47
    iput-boolean v1, p0, Lcom/lge/camera/PostviewNormalActivity;->isFromCreateProcess:Z

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-boolean v1, p0, Lcom/lge/camera/PostviewNormalActivity;->isFromCreateProcess:Z

    goto :goto_0
.end method

.method protected loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "degrees"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 153
    const-string v5, "CameraApp"

    const-string v6, "Load captured image:%s, degrees:%d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v5, :cond_0

    .line 157
    iget-object v5, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v5

    if-nez v5, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v4

    .line 160
    .local v4, "imageWidth":I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v3

    .line 162
    .local v3, "imageHeight":I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object v2

    .line 164
    .local v2, "dstSize":[I
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aget v7, v2, v9

    aget v8, v2, v10

    invoke-static {v5, v6, v7, v8}, Lcom/lge/camera/util/ImageManager;->loadScaledBitmap(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 170
    .end local v2    # "dstSize":[I
    .end local v3    # "imageHeight":I
    .end local v4    # "imageWidth":I
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 171
    const-string v5, "CameraApp"

    const-string v6, "LoadBitmap fail!"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/4 v5, 0x0

    .line 176
    :goto_1
    return-object v5

    .line 167
    :cond_1
    iget-object v5, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Lcom/lge/camera/PostviewNormalActivity;->getLastThumbnail(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, "degree":I
    iget-object v5, p0, Lcom/lge/camera/PostviewNormalActivity;->mImageHandler:Lcom/lge/camera/util/ImageHandler;

    invoke-virtual {v5, v0, v1, v9}, Lcom/lge/camera/util/ImageHandler;->getImage(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1
.end method

.method protected loadSingleCapturedImages()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 115
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 119
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->setFileNameLayout()V

    .line 120
    const v4, 0x7f0d014d

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 122
    .local v3, "postview":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->reloadedPostview()V

    move v4, v5

    .line 147
    .end local v3    # "postview":Landroid/widget/ImageView;
    :goto_0
    return v4

    .line 128
    .restart local v3    # "postview":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    .line 129
    .local v1, "capturedImageUri":Landroid/net/Uri;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    .line 131
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 133
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 135
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/PostviewNormalActivity;->loadCapturedImage(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    .line 136
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    move v4, v6

    .line 137
    goto :goto_0

    .line 139
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    .line 143
    goto :goto_0

    .line 140
    :catch_0
    move-exception v2

    .line 141
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v6, "Exception!"

    invoke-static {v4, v6, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 146
    .end local v1    # "capturedImageUri":Landroid/net/Uri;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "postview":Landroid/widget/ImageView;
    :cond_3
    const-string v4, "CameraApp"

    const-string v5, "mUriList.size() is 0 !!"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v6

    .line 147
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 63
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 80
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0

    .line 65
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->doBackKeyInPostview()V

    goto :goto_0

    .line 68
    :sswitch_1
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/PostviewNormalActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 72
    :sswitch_2
    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewNormalActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 76
    :sswitch_3
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/PostviewNormalActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0d0262 -> :sswitch_2
        0x7f0d0263 -> :sswitch_3
        0x7f0d0264 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0c0004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 93
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const v1, 0x7f0d015b

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "postView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 96
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewNormalActivity;->loadSingleCapturedImages()Z

    goto :goto_0
.end method

.method protected reloadedPostview()V
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 108
    const v1, 0x7f0d014d

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 109
    .local v0, "postview":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    .end local v0    # "postview":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected setFileName()V
    .locals 2

    .prologue
    .line 181
    const v1, 0x7f0d015c

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewNormalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 182
    .local v0, "tv":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/lge/camera/PostviewNormalActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    :cond_0
    return-void
.end method

.method protected setupLayout()V
    .locals 1

    .prologue
    .line 190
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewNormalActivity;->inflateStub(I)Landroid/view/View;

    .line 191
    return-void
.end method
