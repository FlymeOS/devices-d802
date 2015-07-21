.class public Lcom/lge/lgdrm/DrmFwExt$MediaFile;
.super Ljava/lang/Object;
.source "DrmFwExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgdrm/DrmFwExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method public static getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 315
    sget-boolean v7, Lcom/lge/lgdrm/Drm;->LGDRM:Z

    if-nez v7, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-object v6

    .line 318
    :cond_1
    # invokes: Lcom/lge/lgdrm/DrmFwExt;->isDRM(Ljava/lang/String;)Z
    invoke-static {p0}, Lcom/lge/lgdrm/DrmFwExt;->access$000(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 322
    invoke-static {p0}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v2

    .line 323
    .local v2, "mediaType":Landroid/media/MediaFile$MediaFileType;
    if-nez v2, :cond_2

    .line 324
    const-string v7, "DrmFwExt"

    const-string v8, "getFileTypeFromDrm : mediaType is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 328
    :cond_2
    iget v7, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v8, 0x515

    if-lt v7, v8, :cond_0

    iget v7, v2, Landroid/media/MediaFile$MediaFileType;->fileType:I

    const/16 v8, 0x51a

    if-gt v7, v8, :cond_0

    .line 334
    const/4 v3, 0x0

    .line 337
    .local v3, "nFileType":I
    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v7}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "orgMimetype":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 339
    invoke-static {v5}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    .line 342
    :cond_3
    if-eqz v3, :cond_4

    .line 343
    new-instance v7, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    invoke-direct {v7, v3, v5}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V

    move-object v6, v7

    goto :goto_0

    .line 347
    :cond_4
    invoke-static {p0}, Lcom/lge/lgdrm/DrmContent;->getContentType(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, "contentType":I
    const/4 v7, 0x2

    invoke-static {p0, v7}, Lcom/lge/lgdrm/DrmContent;->getContentInfo(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "extension":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eq v0, v9, :cond_5

    if-eq v0, v10, :cond_5

    const/4 v7, 0x3

    if-ne v0, v7, :cond_0

    .line 359
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 361
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v4

    .line 362
    .local v4, "orgMediaType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v4, :cond_0

    .line 363
    new-instance v7, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    iget v8, v4, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iget-object v9, v4, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    .line 365
    .end local v0    # "contentType":I
    .end local v1    # "extension":Ljava/lang/String;
    .end local v4    # "orgMediaType":Landroid/media/MediaFile$MediaFileType;
    .end local v5    # "orgMimetype":Ljava/lang/String;
    :catch_0
    move-exception v7

    goto :goto_0
.end method
