.class Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;
.super Landroid/media/MediaScanner$MyMediaScannerClient;
.source "MediaScannerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/media/MediaScannerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClientEx"
.end annotation


# instance fields
.field private mIsHifi:Z

.field private mProtectedType:I

.field private mVideoDateTaken:J

.field private mlatitude:F

.field private mlongitude:F

.field private mparseLatLonSuccess:Z

.field final synthetic this$0:Lcom/lge/media/MediaScannerEx;


# direct methods
.method private constructor <init>(Lcom/lge/media/MediaScannerEx;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/media/MediaScannerEx;Lcom/lge/media/MediaScannerEx$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/media/MediaScannerEx;
    .param p2, "x1"    # Lcom/lge/media/MediaScannerEx$1;

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;-><init>(Lcom/lge/media/MediaScannerEx;)V

    return-void
.end method

.method private convertRationalLatLonToFloat(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "rationalString"    # Ljava/lang/String;
    .param p2, "isLat"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, "ref":I
    const/4 v2, 0x0

    .line 758
    .local v2, "result":F
    const/4 v0, 0x0

    .line 760
    .local v0, "length":I
    if-nez p1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v3

    .line 764
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 766
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-ne v5, v6, :cond_2

    .line 767
    const/4 v1, 0x1

    .line 775
    :goto_1
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 776
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaScanner] convertRational LatLonToFloat float = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    if-ne p2, v4, :cond_3

    .line 779
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaScanner] convertRational LatLonToFloat isLat = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    int-to-float v3, v1

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mlatitude:F

    .line 786
    :goto_2
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaScanner] convertRational LatLonToFloat succeed, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 788
    goto :goto_0

    .line 768
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_0

    .line 769
    const/4 v1, -0x1

    goto :goto_1

    .line 782
    :cond_3
    const-string v3, "MediaScannerEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaScanner] convertRational LatLonToFloat isLon = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    int-to-float v3, v1

    mul-float/2addr v3, v2

    iput v3, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mlongitude:F

    goto :goto_2
.end method

.method private parseDateTaken(Ljava/lang/String;)J
    .locals 11
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 818
    const-wide/16 v0, 0x0

    .line 819
    .local v0, "convertDate":J
    const/4 v3, 0x0

    .line 821
    .local v3, "dateStr":Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 822
    .local v5, "lastDot":I
    if-lez v5, :cond_0

    .line 823
    invoke-virtual {p1, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 826
    :cond_0
    const-string v8, "T"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 827
    .local v7, "splitDate":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-lt v8, v9, :cond_1

    .line 828
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 831
    :cond_1
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v8, "yyyyMMddHHmmss"

    invoke-direct {v6, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 833
    .local v6, "sdFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 834
    invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 835
    .local v2, "date":Ljava/util/Date;
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 840
    .end local v2    # "date":Ljava/util/Date;
    :goto_0
    const-string v8, "MediaScannerEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MediaScanner] parseDateTaken() input value = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", convertDate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_2

    .line 843
    const-wide/16 v0, 0x0

    .line 846
    :cond_2
    return-wide v0

    .line 836
    :catch_0
    move-exception v4

    .line 837
    .local v4, "e":Ljava/text/ParseException;
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method private splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1, "rationalString"    # Ljava/lang/String;
    .param p2, "isLat"    # Z

    .prologue
    const/4 v2, 0x0

    .line 724
    const/4 v0, 0x0

    .line 726
    .local v0, "length":I
    if-nez p1, :cond_0

    move-object v1, v2

    .line 751
    :goto_0
    return-object v1

    .line 730
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 731
    const/4 v1, 0x0

    .line 732
    .local v1, "result":Ljava/lang/String;
    const-string v3, "MediaScannerEx"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MediaScanner] convertRational LatLonToString rationalString = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    move-object v1, v2

    .line 735
    goto :goto_0

    .line 738
    :cond_1
    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3

    .line 744
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    .line 745
    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    .line 741
    goto :goto_0

    .line 748
    :cond_4
    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "noMedia"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 383
    iput v1, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    .line 386
    iput-boolean v1, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mparseLatLonSuccess:Z

    .line 387
    iput v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mlatitude:F

    .line 388
    iput v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mlongitude:F

    .line 390
    iput-boolean v1, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mIsHifi:Z

    .line 391
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mVideoDateTaken:J

    .line 392
    invoke-super/range {p0 .. p8}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v0

    .line 395
    .local v0, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v1, :cond_0

    .line 396
    # getter for: Lcom/lge/media/MediaScannerEx;->LGE_PRIVATE_LOG:Z
    invoke-static {}, Lcom/lge/media/MediaScannerEx;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p7, :cond_0

    if-nez p8, :cond_0

    .line 397
    const-string v1, "MediaScannerEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MediaScanner] beginFile() path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    return-object v0
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "lastModified"    # J
    .param p5, "fileSize"    # J
    .param p7, "isDirectory"    # Z
    .param p8, "scanAlways"    # Z
    .param p9, "noMedia"    # Z

    .prologue
    .line 375
    invoke-super/range {p0 .. p9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    move-result-object v0

    .line 376
    .local v0, "result":Landroid/net/Uri;
    return-object v0
.end method

.method protected endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 20
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "ringtones"    # Z
    .param p3, "notifications"    # Z
    .param p4, "alarms"    # Z
    .param p5, "music"    # Z
    .param p6, "podcasts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 550
    const/4 v15, 0x0

    .line 551
    .local v15, "timerAlert":Z
    const/4 v13, 0x0

    .line 554
    .local v13, "needToSetSettings2":Z
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_0

    .line 555
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 556
    .local v8, "fileType":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const/16 v2, 0x515

    if-lt v8, v2, :cond_0

    const/16 v2, 0x51a

    if-gt v8, v2, :cond_0

    .line 568
    .end local v8    # "fileType":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    .line 569
    .local v10, "lowpath":Ljava/lang/String;
    const-string v2, "/my_sounds/"

    invoke-virtual {v10, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_11

    const-string v2, "3GP"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "AMR"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_1
    const/16 v19, 0x1

    .line 573
    .local v19, "voicerecording":Z
    :goto_0
    if-eqz v19, :cond_2

    .line 574
    const/16 p5, 0x0

    .line 578
    :cond_2
    const/4 v4, 0x0

    .line 580
    .local v4, "result":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mWasEmptyPriorToScan:Z
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$200(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mNoMedia:Z

    if-nez v2, :cond_8

    .line 581
    const-string v2, "MediaScannerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaScanner] endFile() mPath = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,entry.mRowId = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,alarms = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ,mDefaultTimerAlertSet = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertSet:Z
    invoke-static {v6}, Lcom/lge/media/MediaScannerEx;->access$300(Lcom/lge/media/MediaScannerEx;)Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    move-wide/from16 v16, v0

    .line 583
    .local v16, "rowId":J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-nez v2, :cond_8

    .line 584
    if-eqz p4, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertSet:Z
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$300(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$400(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$400(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 587
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->toValues()Landroid/content/ContentValues;

    move-result-object v5

    .line 588
    .local v5, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "title"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 589
    .local v18, "title":Ljava/lang/String;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 590
    :cond_4
    const-string v2, "_data"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 591
    const-string/jumbo v2, "title"

    move-object/from16 v0, v18

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :cond_5
    const-string v2, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 594
    const-string v2, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 595
    const-string v2, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 596
    const-string v2, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 597
    const-string v2, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 598
    const/4 v15, 0x1

    .line 599
    const/4 v13, 0x1

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$500(Lcom/lge/media/MediaScannerEx;)Landroid/media/MediaInserter;

    move-result-object v9

    .line 601
    .local v9, "inserter":Landroid/media/MediaInserter;
    if-eqz v9, :cond_6

    if-eqz v13, :cond_8

    .line 602
    :cond_6
    if-eqz v9, :cond_7

    .line 603
    invoke-virtual {v9}, Landroid/media/MediaInserter;->flushAll()V

    .line 605
    :cond_7
    const-string v2, "MediaScannerEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MediaScanner] endFile() mAudioUri = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/media/MediaScannerEx;->access$600(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$900(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$700(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/media/MediaScannerEx;->access$800(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v2, v3, v6, v5}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 614
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v9    # "inserter":Landroid/media/MediaInserter;
    .end local v16    # "rowId":J
    .end local v18    # "title":Ljava/lang/String;
    :cond_8
    if-nez v4, :cond_d

    .line 615
    invoke-super/range {p0 .. p6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v4

    .line 616
    if-eqz v4, :cond_d

    .line 617
    const/4 v14, 0x0

    .line 618
    .local v14, "needToupdate":Z
    const/4 v12, 0x0

    .line 619
    .local v12, "mediaType":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 620
    .restart local v5    # "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v8

    .line 623
    .restart local v8    # "fileType":I
    if-nez v8, :cond_9

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v11

    .line 625
    .local v11, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v11, :cond_9

    .line 626
    iget v8, v11, Landroid/media/MediaFile$MediaFileType;->fileType:I

    .line 627
    const/4 v14, 0x1

    .line 633
    .end local v11    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    invoke-virtual {v2}, Lcom/lge/media/MediaScannerEx;->isDrmEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v8}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v8

    .line 635
    const/4 v14, 0x1

    .line 638
    :cond_a
    invoke-static {v8}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 639
    const/4 v12, 0x2

    .line 647
    :cond_b
    :goto_1
    const-string v2, "media_type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    .end local v8    # "fileType":I
    :cond_c
    if-eqz v14, :cond_d

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1100(Lcom/lge/media/MediaScannerEx;)Landroid/content/IContentProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$1000(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 655
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v12    # "mediaType":I
    .end local v14    # "needToupdate":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mWasEmptyPriorToScan:Z
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1200(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mNoMedia:Z

    if-nez v2, :cond_f

    .line 657
    if-eqz p3, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultNotificationSet2:Z
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1300(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1400(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$1500(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 660
    :cond_e
    const/4 v13, 0x1

    .line 677
    :cond_f
    :goto_2
    if-eqz v13, :cond_10

    .line 678
    if-eqz p3, :cond_19

    .line 680
    const-string v2, "notification_sound_sim2"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2200(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 681
    const-string v2, "MediaScannerEx"

    const-string v3, "[MediaScanner] Set a default 2nd sim noti sound"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const-string v2, "notification_sound_sim3"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2300(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 688
    const-string v2, "notification_default"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2400(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    const/4 v3, 0x1

    # setter for: Lcom/lge/media/MediaScannerEx;->mDefaultNotificationSet2:Z
    invoke-static {v2, v3}, Lcom/lge/media/MediaScannerEx;->access$1302(Lcom/lge/media/MediaScannerEx;Z)Z

    .line 716
    :cond_10
    :goto_3
    return-object v4

    .line 569
    .end local v4    # "result":Landroid/net/Uri;
    .end local v19    # "voicerecording":Z
    :cond_11
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 640
    .restart local v4    # "result":Landroid/net/Uri;
    .restart local v5    # "values":Landroid/content/ContentValues;
    .restart local v8    # "fileType":I
    .restart local v12    # "mediaType":I
    .restart local v14    # "needToupdate":Z
    .restart local v19    # "voicerecording":Z
    :cond_12
    invoke-static {v8}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 641
    const/4 v12, 0x3

    goto/16 :goto_1

    .line 642
    :cond_13
    invoke-static {v8}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 643
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 644
    :cond_14
    invoke-static {v8}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 645
    const/4 v12, 0x4

    goto/16 :goto_1

    .line 662
    .end local v5    # "values":Landroid/content/ContentValues;
    .end local v8    # "fileType":I
    .end local v12    # "mediaType":I
    .end local v14    # "needToupdate":Z
    :cond_15
    if-eqz p2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneSet2:Z
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1600(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1700(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$1800(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 665
    :cond_16
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 668
    :cond_17
    if-eqz p4, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultAlarmSet2:Z
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$1900(Lcom/lge/media/MediaScannerEx;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/media/MediaScannerEx;->access$2000(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2100(Lcom/lge/media/MediaScannerEx;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 671
    :cond_18
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 691
    :cond_19
    if-eqz p2, :cond_1a

    .line 693
    const-string v2, "ringtone_sim2"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2500(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 694
    const-string v2, "MediaScannerEx"

    const-string v3, "[MediaScanner] Set a default 2nd sim ringtone"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const-string v2, "ringtone_videocall"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2600(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 696
    const-string v2, "MediaScannerEx"

    const-string v3, "[MediaScanner] Set a default video call ringtone for KT"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v2, "ringtone_sim3"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2700(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    const/4 v3, 0x1

    # setter for: Lcom/lge/media/MediaScannerEx;->mDefaultRingtoneSet2:Z
    invoke-static {v2, v3}, Lcom/lge/media/MediaScannerEx;->access$1602(Lcom/lge/media/MediaScannerEx;Z)Z

    goto/16 :goto_3

    .line 702
    :cond_1a
    if-eqz p4, :cond_10

    .line 704
    const-string v2, "MediaScannerEx"

    const-string v3, "[MediaScanner] Set a timerAlert"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    if-eqz v15, :cond_1b

    .line 706
    const-string/jumbo v2, "timer_alert"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2800(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    const/4 v3, 0x1

    # setter for: Lcom/lge/media/MediaScannerEx;->mDefaultTimerAlertSet:Z
    invoke-static {v2, v3}, Lcom/lge/media/MediaScannerEx;->access$302(Lcom/lge/media/MediaScannerEx;Z)Z

    .line 711
    :cond_1b
    const-string v2, "alarm_default"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    # getter for: Lcom/lge/media/MediaScannerEx;->mAudioUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/media/MediaScannerEx;->access$2900(Lcom/lge/media/MediaScannerEx;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v6, v7}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    const/4 v3, 0x1

    # setter for: Lcom/lge/media/MediaScannerEx;->mDefaultAlarmSet2:Z
    invoke-static {v2, v3}, Lcom/lge/media/MediaScannerEx;->access$1902(Lcom/lge/media/MediaScannerEx;Z)Z

    goto/16 :goto_3
.end method

.method protected getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 794
    iget-object v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    invoke-virtual {v2}, Lcom/lge/media/MediaScannerEx;->isDrmEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 795
    const/4 v1, 0x0

    .line 813
    :cond_0
    :goto_0
    return v1

    .line 798
    :cond_1
    const/4 v1, 0x0

    .line 801
    .local v1, "resultFileType":I
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_3

    .line 802
    invoke-static {p1}, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    move-result-object v0

    .line 803
    .local v0, "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-eqz v0, :cond_2

    .line 804
    iget v1, v0, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->fileType:I

    goto :goto_0

    .line 806
    :cond_2
    const-string v2, "drm.service.enabled"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 812
    .end local v0    # "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_3
    invoke-super {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v1

    .line 813
    goto :goto_0
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-super {p0, p1, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->handleStringTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v2, "location"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 411
    invoke-direct {p0, p2, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->convertRationalLatLonToFloat(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->splitLatLon(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->convertRationalLatLonToFloat(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iput-boolean v0, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mparseLatLonSuccess:Z

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const-string v2, "ishifi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 418
    invoke-virtual {p0, p2, v1, v1}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->parseSubstring(Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mIsHifi:Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 421
    :cond_3
    const-string v0, "datetaken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0, p2}, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->parseDateTaken(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mVideoDateTaken:J

    .line 423
    const-string v0, "MediaScannerEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MediaScanner] handleStringTag : video_datetaken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mVideoDateTaken = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mVideoDateTaken:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "lastModified"    # J
    .param p4, "fileSize"    # J
    .param p6, "isDirectory"    # Z
    .param p7, "noMedia"    # Z

    .prologue
    .line 369
    invoke-super/range {p0 .. p7}, Landroid/media/MediaScanner$MyMediaScannerClient;->scanFile(Ljava/lang/String;JJZZ)V

    .line 370
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 3
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 431
    sget-boolean v2, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v2, :cond_4

    .line 432
    iget-object v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, "fileType":I
    const/16 v2, 0x515

    if-lt v1, v2, :cond_0

    const/16 v2, 0x51a

    if-le v1, v2, :cond_1

    .line 435
    :cond_0
    invoke-super {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->setMimeType(Ljava/lang/String;)V

    .line 447
    .end local v1    # "fileType":I
    :goto_0
    return-void

    .line 437
    .restart local v1    # "fileType":I
    :cond_1
    iget-object v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, "drmType":I
    const/16 v2, 0x501

    if-eq v0, v2, :cond_2

    const/16 v2, 0x1800

    if-ne v0, v2, :cond_3

    .line 439
    :cond_2
    iput-object p1, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mMimeType:Ljava/lang/String;

    .line 441
    :cond_3
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    goto :goto_0

    .line 445
    .end local v0    # "drmType":I
    .end local v1    # "fileType":I
    :cond_4
    invoke-super {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->setMimeType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected toValues()Landroid/content/ContentValues;
    .locals 13

    .prologue
    const/16 v12, 0xc

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 451
    invoke-super {p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 454
    .local v4, "map":Landroid/content/ContentValues;
    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-eqz v6, :cond_2

    .line 455
    iget-boolean v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mIsDrm:Z

    if-nez v6, :cond_0

    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    if-ne v6, v10, :cond_c

    .line 456
    :cond_0
    iput v10, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    .line 465
    :cond_1
    :goto_0
    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    if-eq v6, v10, :cond_2

    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFileEx;->isDMBFileType(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 466
    const/4 v6, 0x2

    iput v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    .line 471
    :cond_2
    const-string v6, "protected_type"

    iget v7, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 473
    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 475
    iget-boolean v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mparseLatLonSuccess:Z

    if-eqz v6, :cond_3

    .line 476
    const-string v6, "latitude"

    iget v7, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mlatitude:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 477
    const-string v6, "longitude"

    iget v7, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mlongitude:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 483
    :cond_3
    const-string v6, "MediaScannerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[MediaScanner] toValues() : mFileType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mNoMedia = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mNoMedia:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    const/16 v7, 0x16

    if-eq v6, v7, :cond_4

    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    const/16 v7, 0x15

    if-ne v6, v7, :cond_5

    :cond_4
    iget-boolean v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mNoMedia:Z

    if-nez v6, :cond_5

    .line 486
    const-string v6, "MediaScannerEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "toValues : mVideoDateTaken = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mVideoDateTaken:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string/jumbo v6, "video_datetaken"

    iget-wide v8, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mVideoDateTaken:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    :cond_5
    iget-boolean v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mIsHifi:Z

    if-eqz v6, :cond_d

    .line 493
    const-string v6, "is_hifi"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 500
    :goto_1
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x91

    if-ne v6, v7, :cond_e

    .line 501
    const-string v6, "is_lock"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    :goto_2
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_CAMERA_BURSTSHOT:Z

    if-eqz v6, :cond_a

    .line 509
    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mFileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 510
    :cond_6
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "burst_value":Ljava/lang/String;
    const/16 v6, 0x2f

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 512
    .local v3, "lastSlash":I
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 513
    if-ltz v3, :cond_a

    .line 514
    const-string v6, "_Burst"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 515
    const-string v6, "_Burst"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 516
    .local v0, "burst_check":I
    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x8

    if-eq v0, v6, :cond_8

    :cond_7
    const-string v6, ".jpg.dm"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-ne v0, v12, :cond_9

    .line 518
    :cond_8
    const-string v6, "_Burst"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 521
    .end local v0    # "burst_check":I
    :cond_9
    const-string v6, "burst_id"

    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .end local v1    # "burst_value":Ljava/lang/String;
    .end local v3    # "lastSlash":I
    :cond_a
    sget-boolean v6, Lcom/lge/config/ConfigBuildFlags;->CAPP_DRM:Z

    if-eqz v6, :cond_b

    .line 529
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mMimeType:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v2

    .line 530
    .local v2, "fileType":I
    const/16 v6, 0x515

    if-ne v2, v6, :cond_b

    .line 531
    invoke-static {v12}, Lcom/lge/lgdrm/DrmManager;->isSupportedAgent(I)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_b

    .line 533
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/lge/lgdrm/DrmFwExt$MediaFile;->getFileTypeFromDrm(Ljava/lang/String;)Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;

    move-result-object v5

    .line 534
    .local v5, "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    if-eqz v5, :cond_b

    .line 536
    const-string v6, "mime_type"

    iget-object v7, v5, Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .end local v2    # "fileType":I
    .end local v5    # "mediaFileType":Lcom/lge/lgdrm/DrmFwExt$MediaFile$MediaFileType;
    :cond_b
    return-object v4

    .line 458
    :cond_c
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mPath:Ljava/lang/String;

    invoke-static {v6}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v5

    .line 459
    .local v5, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-eqz v5, :cond_1

    .line 460
    iget-object v6, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->this$0:Lcom/lge/media/MediaScannerEx;

    invoke-virtual {v6}, Lcom/lge/media/MediaScannerEx;->isDrmEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v6}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 461
    iput v10, p0, Lcom/lge/media/MediaScannerEx$MyMediaScannerClientEx;->mProtectedType:I

    goto/16 :goto_0

    .line 495
    .end local v5    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_d
    const-string v6, "is_hifi"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 504
    :cond_e
    const-string v6, "is_lock"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2
.end method
