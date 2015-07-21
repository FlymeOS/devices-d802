.class public Lcom/lge/media/MediaHTTPConnectionEx;
.super Landroid/media/MediaHTTPConnection;
.source "MediaHTTPConnectionEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/media/MediaHTTPConnectionEx$1;,
        Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;
    }
.end annotation


# static fields
.field private static final HTTP_REQ_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final TAG:Ljava/lang/String; = "MediaHTTPConnectionEx"


# instance fields
.field private endByte:J

.field private endTime:J

.field private mConnectTimeout:I

.field private mContentSize:J

.field private mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

.field private mIsDisconnectAtPause:Z

.field private mIsHttpByteRangeSeek:Z

.field private mIsHttpDlnaPlayback:Z

.field private mIsHttpTimeSeek:Z

.field private mRangeRequested:Z

.field private mReadTimeout:I

.field private mResCode:I

.field private mResHeader:Ljava/lang/String;

.field private mResHeaderFields:Ljava/lang/StringBuilder;

.field private mServerSupportRangeRequest:Z

.field private mTimeSeekValue:J

.field private rangeRequestLastByte:J

.field private startByte:J

.field private startTime:J

.field private totalByte:J

.field private totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    .line 73
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;-><init>()V

    .line 42
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    .line 43
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z

    .line 44
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z

    .line 45
    iput-boolean v5, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsDisconnectAtPause:Z

    .line 46
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    .line 47
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mContentSize:J

    .line 48
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    .line 49
    iput-boolean v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    .line 51
    iput v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    .line 52
    iput v1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    .line 53
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    .line 56
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 57
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    .line 58
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 59
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 60
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    .line 61
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    .line 62
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->rangeRequestLastByte:J

    .line 65
    iput-boolean v5, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    .line 70
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    .line 75
    new-instance v0, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    invoke-direct {v0, p0, v4}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;-><init>(Lcom/lge/media/MediaHTTPConnectionEx;Lcom/lge/media/MediaHTTPConnectionEx$1;)V

    iput-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    .line 76
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "MediaHTTPConnectionEx contructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method static synthetic access$1002(Lcom/lge/media/MediaHTTPConnectionEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    return p1
.end method

.method static synthetic access$102(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/lge/media/MediaHTTPConnectionEx;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/StringBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/lge/media/MediaHTTPConnectionEx;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mContentSize:J

    return-wide p1
.end method

.method static synthetic access$202(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z

    return p1
.end method

.method static synthetic access$302(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsDisconnectAtPause:Z

    return p1
.end method

.method static synthetic access$402(Lcom/lge/media/MediaHTTPConnectionEx;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/lge/media/MediaHTTPConnectionEx;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/lge/media/MediaHTTPConnectionEx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/media/MediaHTTPConnectionEx;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    return v0
.end method

.method static synthetic access$800(Lcom/lge/media/MediaHTTPConnectionEx;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->rangeRequestLastByte:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/lge/media/MediaHTTPConnectionEx;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/media/MediaHTTPConnectionEx;

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    return v0
.end method

.method private parseByteRangeHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 770
    const/4 v0, 0x1

    return v0
.end method

.method private parseContentFeaturesHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 766
    const/4 v0, 0x1

    return v0
.end method

.method private parseContentLengthHeader()J
    .locals 6

    .prologue
    .line 774
    const-wide/16 v2, -0x1

    .line 775
    .local v2, "total":J
    iget-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v4, :cond_0

    .line 776
    iget-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Content-Length"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "contentLength":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 779
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 785
    .end local v0    # "contentLength":Ljava/lang/String;
    :cond_0
    :goto_0
    return-wide v2

    .line 780
    .restart local v0    # "contentLength":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 781
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private parseTimeSeekRangeHeader(Ljava/lang/String;)Z
    .locals 36
    .param p1, "header"    # Ljava/lang/String;

    .prologue
    .line 470
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] header:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 472
    if-nez p1, :cond_0

    .line 473
    const/16 v32, 0x0

    .line 762
    :goto_0
    return v32

    .line 475
    :cond_0
    const/16 v32, 0x3d

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 476
    .local v10, "equal_position":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v10, v0, :cond_1

    .line 477
    const/16 v32, 0x0

    goto :goto_0

    .line 479
    :cond_1
    const-string v32, "npt"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    .line 480
    .local v26, "npt_position":I
    const/16 v32, -0x1

    move/from16 v0, v26

    move/from16 v1, v32

    if-ne v0, v1, :cond_2

    .line 481
    const/16 v32, 0x0

    goto :goto_0

    .line 483
    :cond_2
    const/16 v32, 0x2f

    add-int/lit8 v33, v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v29

    .line 484
    .local v29, "slash_position":I
    const/16 v32, -0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 485
    const/16 v32, 0x0

    goto :goto_0

    .line 489
    :cond_3
    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 491
    .local v27, "npt_range_resp_spec":Ljava/lang/String;
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] npt_range_resp_spec:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v32, 0x2d

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    .line 494
    .local v22, "minus_position":I
    const/16 v32, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_d

    .line 496
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 497
    .local v14, "first_npt_pos":Ljava/lang/String;
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] first_npt_pos:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/16 v32, 0x3a

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 499
    .local v7, "colon_position":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] colon_position:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v7, v0, :cond_5

    .line 504
    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 506
    .local v12, "first_npt_hh_pos":Ljava/lang/String;
    :try_start_0
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 511
    .local v16, "hourTime":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] hourTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v32, 0x3a

    add-int/lit8 v33, v7, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 514
    .local v8, "colon_position1":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v8, v0, :cond_4

    .line 515
    add-int/lit8 v32, v7, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 517
    .local v13, "first_npt_mm_pos":Ljava/lang/String;
    :try_start_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    .line 522
    .local v23, "mmTime":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] mmTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    add-int/lit8 v32, v8, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 526
    .local v15, "first_npt_sec_pos":Ljava/lang/String;
    :try_start_2
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v28

    .line 531
    .local v28, "secTime":F
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] secTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v32, v0

    mul-int/lit8 v33, v23, 0x3c

    add-int v32, v32, v33

    const v33, 0xf4240

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const v34, 0x49742400    # 1000000.0f

    mul-float v34, v34, v28

    move/from16 v0, v34

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 533
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .end local v8    # "colon_position1":I
    .end local v12    # "first_npt_hh_pos":Ljava/lang/String;
    .end local v13    # "first_npt_mm_pos":Ljava/lang/String;
    .end local v15    # "first_npt_sec_pos":Ljava/lang/String;
    .end local v16    # "hourTime":I
    .end local v23    # "mmTime":I
    .end local v28    # "secTime":F
    :goto_1
    add-int/lit8 v32, v22, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    .line 552
    .local v20, "last_npt_pos":Ljava/lang/String;
    const/16 v32, 0x3a

    add-int/lit8 v33, v22, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 553
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v7, v0, :cond_7

    .line 557
    add-int/lit8 v32, v22, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 559
    .local v18, "last_npt_hh_pos":Ljava/lang/String;
    :try_start_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v16

    .line 564
    .restart local v16    # "hourTime":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] hourTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    const/16 v32, 0x3a

    add-int/lit8 v33, v7, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 566
    .restart local v8    # "colon_position1":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v8, v0, :cond_6

    .line 567
    add-int/lit8 v32, v7, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 569
    .local v19, "last_npt_mm_pos":Ljava/lang/String;
    :try_start_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v23

    .line 574
    .restart local v23    # "mmTime":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] mmTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    add-int/lit8 v32, v8, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 578
    .local v21, "last_npt_sec_pos":Ljava/lang/String;
    :try_start_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_6

    move-result v28

    .line 583
    .restart local v28    # "secTime":F
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] secTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v32, v0

    mul-int/lit8 v33, v23, 0x3c

    add-int v32, v32, v33

    const v33, 0xf4240

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const v34, 0x49742400    # 1000000.0f

    mul-float v34, v34, v28

    move/from16 v0, v34

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    .line 585
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v8    # "colon_position1":I
    .end local v16    # "hourTime":I
    .end local v18    # "last_npt_hh_pos":Ljava/lang/String;
    .end local v19    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v21    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v23    # "mmTime":I
    .end local v28    # "secTime":F
    :goto_2
    const/16 v32, 0x20

    add-int/lit8 v33, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v30

    .line 604
    .local v30, "space_position":I
    const/16 v25, 0x0

    .line 605
    .local v25, "npt_instant_resp_spec":Ljava/lang/String;
    const/16 v32, -0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    .line 606
    add-int/lit8 v32, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 609
    :goto_3
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] npt_instant_resp_spec:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/16 v32, 0x2a

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 612
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 674
    :goto_4
    const-string v32, "bytes"

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 675
    .local v6, "bytes_position":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v6, v0, :cond_e

    .line 676
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] totalTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] totalByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 507
    .end local v6    # "bytes_position":I
    .end local v20    # "last_npt_pos":Ljava/lang/String;
    .end local v25    # "npt_instant_resp_spec":Ljava/lang/String;
    .end local v30    # "space_position":I
    .restart local v12    # "first_npt_hh_pos":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 508
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 509
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 518
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "colon_position1":I
    .restart local v13    # "first_npt_mm_pos":Ljava/lang/String;
    .restart local v16    # "hourTime":I
    :catch_1
    move-exception v9

    .line 519
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 520
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 527
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "first_npt_sec_pos":Ljava/lang/String;
    .restart local v23    # "mmTime":I
    :catch_2
    move-exception v9

    .line 528
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 529
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 535
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v13    # "first_npt_mm_pos":Ljava/lang/String;
    .end local v15    # "first_npt_sec_pos":Ljava/lang/String;
    .end local v23    # "mmTime":I
    :cond_4
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 536
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 542
    .end local v8    # "colon_position1":I
    .end local v12    # "first_npt_hh_pos":Ljava/lang/String;
    .end local v16    # "hourTime":I
    :cond_5
    :try_start_6
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3

    move-result v31

    .line 547
    .local v31, "time":F
    const v32, 0x49742400    # 1000000.0f

    mul-float v32, v32, v31

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 548
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 543
    .end local v31    # "time":F
    :catch_3
    move-exception v9

    .line 544
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 545
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 560
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v18    # "last_npt_hh_pos":Ljava/lang/String;
    .restart local v20    # "last_npt_pos":Ljava/lang/String;
    :catch_4
    move-exception v9

    .line 561
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 562
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 570
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "colon_position1":I
    .restart local v16    # "hourTime":I
    .restart local v19    # "last_npt_mm_pos":Ljava/lang/String;
    :catch_5
    move-exception v9

    .line 571
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 572
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 579
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "last_npt_sec_pos":Ljava/lang/String;
    .restart local v23    # "mmTime":I
    :catch_6
    move-exception v9

    .line 580
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 581
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 587
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v21    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v23    # "mmTime":I
    :cond_6
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 588
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 591
    .end local v8    # "colon_position1":I
    .end local v16    # "hourTime":I
    .end local v18    # "last_npt_hh_pos":Ljava/lang/String;
    :cond_7
    const/high16 v31, -0x40800000    # -1.0f

    .line 593
    .restart local v31    # "time":F
    :try_start_7
    invoke-static/range {v20 .. v20}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v31

    .line 597
    :goto_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_8

    .line 598
    const v32, 0x49742400    # 1000000.0f

    mul-float v32, v32, v31

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    .line 599
    :cond_8
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 594
    :catch_7
    move-exception v9

    .line 595
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    goto :goto_5

    .line 608
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v31    # "time":F
    .restart local v25    # "npt_instant_resp_spec":Ljava/lang/String;
    .restart local v30    # "space_position":I
    :cond_9
    add-int/lit8 v32, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_3

    .line 614
    :cond_a
    const/16 v32, 0x3a

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 615
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v7, v0, :cond_c

    .line 619
    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 622
    .local v24, "npt_hh_pos":Ljava/lang/String;
    :try_start_8
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v16

    .line 627
    .restart local v16    # "hourTime":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] hourTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/16 v32, 0x3a

    add-int/lit8 v33, v7, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 629
    .restart local v8    # "colon_position1":I
    const/16 v32, -0x1

    move/from16 v0, v32

    if-eq v8, v0, :cond_b

    .line 630
    add-int/lit8 v32, v7, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 632
    .restart local v19    # "last_npt_mm_pos":Ljava/lang/String;
    :try_start_9
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v23

    .line 637
    .restart local v23    # "mmTime":I
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] mmTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    add-int/lit8 v32, v8, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 641
    .restart local v21    # "last_npt_sec_pos":Ljava/lang/String;
    :try_start_a
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    move-result v28

    .line 646
    .restart local v28    # "secTime":F
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] secTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v32, v0

    mul-int/lit8 v33, v23, 0x3c

    add-int v32, v32, v33

    const v33, 0xf4240

    mul-int v32, v32, v33

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const v34, 0x49742400    # 1000000.0f

    mul-float v34, v34, v28

    move/from16 v0, v34

    float-to-long v0, v0

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 648
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 623
    .end local v8    # "colon_position1":I
    .end local v16    # "hourTime":I
    .end local v19    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v21    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v23    # "mmTime":I
    .end local v28    # "secTime":F
    :catch_8
    move-exception v9

    .line 624
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 625
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 633
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "colon_position1":I
    .restart local v16    # "hourTime":I
    .restart local v19    # "last_npt_mm_pos":Ljava/lang/String;
    :catch_9
    move-exception v9

    .line 634
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 635
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 642
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v21    # "last_npt_sec_pos":Ljava/lang/String;
    .restart local v23    # "mmTime":I
    :catch_a
    move-exception v9

    .line 643
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 644
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 651
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v19    # "last_npt_mm_pos":Ljava/lang/String;
    .end local v21    # "last_npt_sec_pos":Ljava/lang/String;
    .end local v23    # "mmTime":I
    :cond_b
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 652
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 659
    .end local v8    # "colon_position1":I
    .end local v16    # "hourTime":I
    .end local v24    # "npt_hh_pos":Ljava/lang/String;
    :cond_c
    :try_start_b
    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    move-result v31

    .line 664
    .restart local v31    # "time":F
    const v32, 0x49742400    # 1000000.0f

    mul-float v32, v32, v31

    move/from16 v0, v32

    float-to-long v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    .line 665
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 660
    .end local v31    # "time":F
    :catch_b
    move-exception v9

    .line 661
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    .line 662
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 670
    .end local v7    # "colon_position":I
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v14    # "first_npt_pos":Ljava/lang/String;
    .end local v20    # "last_npt_pos":Ljava/lang/String;
    .end local v25    # "npt_instant_resp_spec":Ljava/lang/String;
    .end local v30    # "space_position":I
    :cond_d
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 685
    .restart local v6    # "bytes_position":I
    .restart local v7    # "colon_position":I
    .restart local v14    # "first_npt_pos":Ljava/lang/String;
    .restart local v20    # "last_npt_pos":Ljava/lang/String;
    .restart local v25    # "npt_instant_resp_spec":Ljava/lang/String;
    .restart local v30    # "space_position":I
    :cond_e
    const/16 v32, 0x3d

    add-int/lit8 v33, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 686
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v10, v0, :cond_f

    .line 687
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 689
    :cond_f
    const/16 v32, 0x2f

    add-int/lit8 v33, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v29

    .line 690
    const/16 v32, -0x1

    move/from16 v0, v29

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    .line 691
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 695
    :cond_10
    add-int/lit8 v32, v10, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 696
    .local v5, "byte_range_resp_spec":Ljava/lang/String;
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] byte_range_resp_spec:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/16 v32, 0x2d

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    .line 699
    const/16 v32, -0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-eq v0, v1, :cond_12

    .line 701
    const/16 v32, 0x0

    move/from16 v0, v32

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 704
    .local v11, "first_byte_pos":Ljava/lang/String;
    :try_start_c
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    .line 711
    add-int/lit8 v32, v22, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 714
    .local v17, "last_byte_pos":Ljava/lang/String;
    :try_start_d
    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    .line 720
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-lez v32, :cond_12

    .line 722
    :cond_11
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 723
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 705
    .end local v17    # "last_byte_pos":Ljava/lang/String;
    :catch_c
    move-exception v9

    .line 706
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 707
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 715
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v17    # "last_byte_pos":Ljava/lang/String;
    :catch_d
    move-exception v9

    .line 716
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    .line 717
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 729
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "first_byte_pos":Ljava/lang/String;
    .end local v17    # "last_byte_pos":Ljava/lang/String;
    :cond_12
    add-int/lit8 v32, v29, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 731
    .local v4, "byte_instant_resp_spec":Ljava/lang/String;
    const/16 v32, 0x2a

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v32

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_13

    .line 732
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    .line 733
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] totalTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] totalByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 742
    :cond_13
    :try_start_e
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    .line 751
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    sub-long v32, v32, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-gez v32, :cond_15

    .line 753
    :cond_14
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    .line 754
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 743
    :catch_e
    move-exception v9

    .line 744
    .restart local v9    # "e":Ljava/lang/NumberFormatException;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    .line 745
    const/16 v32, 0x0

    goto/16 :goto_0

    .line 756
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] totalTime:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalTime:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] startByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] endByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->endByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[parseTimeSeekRangeHeader] totalByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    const/16 v32, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "headers"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "connect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-super {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "disconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-super {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 108
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "getMIMEType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Landroid/media/MediaHTTPConnection;->getMIMEType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    const-string v0, "MediaHTTPConnectionEx"

    const-string v1, "getUri"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroid/media/MediaHTTPConnection;->getUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 83
    .local v1, "ret":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "originatedBinderDescName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 87
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    invoke-virtual {v2}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mExtendedBinderInternal:Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/media/MediaHTTPConnectionEx$ExtendedBinderInternal;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 93
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/media/MediaHTTPConnection;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    goto :goto_0
.end method

.method public readAt(JI)I
    .locals 5
    .param p1, "offset"    # J
    .param p3, "size"    # I

    .prologue
    const-wide/16 v2, -0x1

    .line 114
    iget-boolean v0, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 115
    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    .line 116
    const-wide/16 p1, 0x0

    .line 117
    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 120
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->readAt(JI)I

    move-result v0

    return v0
.end method

.method protected seekTo(J)V
    .locals 41
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seekToEx] offset:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "/mCurrentOffset:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->teardownConnection()V

    .line 164
    const/16 v23, 0x0

    .line 166
    .local v23, "redirectCount":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v31, v0

    .line 168
    .local v31, "url":Ljava/net/URL;
    const/16 v27, 0x0

    .line 169
    .local v27, "setRangeLastbytePos":Z
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 172
    invoke-static/range {v31 .. v31}, Lcom/lge/media/MediaHTTPConnectionEx;->isLocalHost(Ljava/net/URL;)Z

    move-result v18

    .line 174
    .local v18, "noProxy":Z
    :cond_0
    :goto_0
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 176
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "proxy "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyIP:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " port "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyPort:I

    move/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyPort:I

    move/from16 v32, v0

    if-lez v32, :cond_4

    .line 178
    new-instance v28, Ljava/net/InetSocketAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyIP:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mProxyPort:I

    move/from16 v33, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 179
    .local v28, "socketAddr":Ljava/net/SocketAddress;
    new-instance v21, Ljava/net/Proxy;

    sget-object v32, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, v21

    move-object/from16 v1, v32

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 180
    .local v21, "proxy":Ljava/net/Proxy;
    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v32

    check-cast v32, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    .line 181
    const-string v32, "MediaHTTPConnectionEx"

    const-string v33, "connection initialized with proxy"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v21    # "proxy":Ljava/net/Proxy;
    .end local v28    # "socketAddr":Ljava/net/SocketAddress;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    move/from16 v32, v0

    if-ltz v32, :cond_1

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnectTimeout:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    move/from16 v32, v0

    if-ltz v32, :cond_2

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mReadTimeout:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 198
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossDomainRedirect:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v32, v0

    if-eqz v32, :cond_8

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 202
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 203
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 204
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v33, "Range"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 205
    const-wide/16 v32, 0x0

    cmp-long v32, p1, v32

    if-nez v32, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpDlnaPlayback:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpByteRangeSeek:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 207
    :cond_3
    const-string v32, "MediaHTTPConnectionEx"

    const-string v33, "[seekToEx] remove Range: bytes= 0-"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 447
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v18    # "noProxy":Z
    .end local v27    # "setRangeLastbytePos":Z
    .end local v31    # "url":Ljava/net/URL;
    :catch_0
    move-exception v7

    .line 448
    .local v7, "e":Ljava/io/IOException;
    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    .line 449
    .local v20, "printException":Ljava/lang/Throwable;
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MediaHTTPConnectionEx "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "exception toString: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 455
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mInputStream:Ljava/io/InputStream;

    .line 456
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    .line 457
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 459
    throw v7

    .line 183
    .end local v7    # "e":Ljava/io/IOException;
    .end local v20    # "printException":Ljava/lang/Throwable;
    .restart local v18    # "noProxy":Z
    .restart local v27    # "setRangeLastbytePos":Z
    .restart local v31    # "url":Ljava/net/URL;
    :cond_4
    if-eqz v18, :cond_5

    .line 184
    :try_start_1
    sget-object v32, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual/range {v31 .. v32}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v32

    check-cast v32, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 186
    :cond_5
    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v32

    check-cast v32, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    goto/16 :goto_1

    .line 211
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 212
    const-string v32, "MediaHTTPConnectionEx"

    const-string v33, "[seekToEx] include Range: bytes= 0-"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v34, v0

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v33, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seekToEx] HTTP header =>"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ":"

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 220
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_8
    const-wide/16 v32, 0x0

    cmp-long v32, p1, v32

    if-gtz v32, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    .line 221
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v32, v0

    if-nez v32, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_b

    if-eqz v27, :cond_b

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "Range"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bytes="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v36, v0

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x1

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->rangeRequestLastByte:J

    .line 228
    :goto_3
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    .line 229
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Range: bytes="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "Accept"

    const-string v34, "audio/mp4, video/mp4, video/3gpp2, video/3gpp, audio/amr, audio/aac, audio/aacPlus, audio/mpeg, audio/aiff, audio/flac, */*"

    invoke-virtual/range {v32 .. v34}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v24

    .line 248
    .local v24, "response":I
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mResCode:I

    .line 249
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[response code] STATUS CODE:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    .line 252
    .local v10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 253
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v33, "MediaHTTPConnectionEx"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[response header] "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v34, ": "

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v34

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v33, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v32, v0

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v32, v0

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeaderFields:Ljava/lang/StringBuilder;

    move-object/from16 v32, v0

    const-string v33, "\r\n"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 226
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v24    # "response":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "Range"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bytes="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 232
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-gez v32, :cond_d

    .line 233
    const-string v32, "MediaHTTPConnectionEx"

    const-string v33, "[seekToEx] No mTimeSeekValue"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 236
    :cond_d
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v32, "#.###"

    move-object/from16 v0, v32

    invoke-direct {v6, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTimeSeekValue:J

    move-wide/from16 v32, v0

    const-wide/32 v34, 0xf4240

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-float v0, v0

    move/from16 v19, v0

    .line 238
    .local v19, "npt":F
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    invoke-virtual {v6, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "TimeSeekRange.dlna.org"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "npt="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v32 .. v34}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seekToEx] TimeSeekRange.dlna.org: npt="

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 261
    .end local v6    # "df":Ljava/text/DecimalFormat;
    .end local v19    # "npt":F
    .restart local v10    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v24    # "response":I
    :cond_e
    const/16 v32, 0x1a0

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 262
    const-string v32, "MediaHTTPConnectionEx"

    const-string v33, "We requested a content range, but server didn\'t support that. (responded with 416)"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-nez v27, :cond_f

    .line 264
    const/16 v27, 0x1

    .line 269
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "Range"

    invoke-interface/range {v32 .. v33}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    goto/16 :goto_0

    .line 266
    :cond_f
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    .line 267
    const/16 v27, 0x0

    goto :goto_6

    .line 272
    :cond_10
    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v32, v0

    if-nez v32, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v32

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_11

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v32, v0

    const-string v33, "Range"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bytes="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v36

    const-wide/16 v38, 0x1

    sub-long v36, v36, v38

    move-object/from16 v0, v34

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v32 .. v34}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v32

    const-wide/16 v34, 0x1

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->rangeRequestLastByte:J

    goto/16 :goto_0

    .line 278
    :cond_11
    const/16 v32, 0x12c

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    const/16 v32, 0x12d

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    const/16 v32, 0x12e

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    const/16 v32, 0x12f

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    const/16 v32, 0x133

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    .line 284
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[ResponseMessage]:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mResHeader:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossDomainRedirect:Z

    move/from16 v32, v0

    if-eqz v32, :cond_12

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    .line 331
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1c

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mHeaders:Ljava/util/Map;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v32

    invoke-interface/range {v32 .. v32}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 333
    .restart local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_13
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_1c

    .line 334
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 335
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    const-string v33, "Range"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 336
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 337
    .local v22, "rangeRequestLastPos":Ljava/lang/String;
    if-eqz v22, :cond_14

    const/16 v32, 0x2d

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v32

    if-ltz v32, :cond_14

    .line 338
    const/16 v32, 0x2d

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 339
    .local v13, "lastHyphenPos":I
    add-int/lit8 v32, v13, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 340
    .local v14, "lastPos":Ljava/lang/String;
    if-eqz v14, :cond_14

    invoke-virtual {v14}, Ljava/lang/String;->length()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v32

    if-eqz v32, :cond_14

    .line 342
    :try_start_2
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->rangeRequestLastByte:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 353
    .end local v13    # "lastHyphenPos":I
    .end local v14    # "lastPos":Ljava/lang/String;
    :cond_14
    :goto_8
    :try_start_3
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 290
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v22    # "rangeRequestLastPos":Ljava/lang/String;
    :cond_15
    add-int/lit8 v23, v23, 0x1

    const/16 v32, 0x14

    move/from16 v0, v23

    move/from16 v1, v32

    if-le v0, v1, :cond_16

    .line 291
    new-instance v32, Ljava/net/NoRouteToHostException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Too many redirects: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 294
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v17

    .line 295
    .local v17, "method":Ljava/lang/String;
    const/16 v32, 0x133

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    const-string v32, "GET"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_17

    const-string v32, "HEAD"

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_17

    .line 299
    new-instance v32, Ljava/net/NoRouteToHostException;

    const-string v33, "Invalid redirect"

    invoke-direct/range {v32 .. v33}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 301
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "Location"

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 302
    .local v16, "location":Ljava/lang/String;
    if-nez v16, :cond_18

    .line 303
    new-instance v32, Ljava/net/NoRouteToHostException;

    const-string v33, "Invalid redirect"

    invoke-direct/range {v32 .. v33}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 305
    :cond_18
    new-instance v31, Ljava/net/URL;

    .end local v31    # "url":Ljava/net/URL;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 306
    .restart local v31    # "url":Ljava/net/URL;
    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v32

    const-string v33, "https"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_19

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v32

    const-string v33, "http"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_19

    .line 307
    new-instance v32, Ljava/net/NoRouteToHostException;

    const-string v33, "Unsupported protocol redirect"

    invoke-direct/range {v32 .. v33}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 309
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 310
    .local v26, "sameProtocol":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossProtocolRedirect:Z

    move/from16 v32, v0

    if-nez v32, :cond_1a

    if-nez v26, :cond_1a

    .line 311
    new-instance v32, Ljava/net/NoRouteToHostException;

    const-string v33, "Cross-protocol redirects are disallowed"

    invoke-direct/range {v32 .. v33}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 313
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v31}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 314
    .local v25, "sameHost":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mAllowCrossDomainRedirect:Z

    move/from16 v32, v0

    if-nez v32, :cond_1b

    if-nez v25, :cond_1b

    .line 315
    new-instance v32, Ljava/net/NoRouteToHostException;

    const-string v33, "Cross-domain redirects are disallowed"

    invoke-direct/range {v32 .. v33}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 318
    :cond_1b
    const/16 v32, 0x133

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 320
    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mURL:Ljava/net/URL;

    goto/16 :goto_0

    .line 343
    .end local v16    # "location":Ljava/lang/String;
    .end local v17    # "method":Ljava/lang/String;
    .end local v25    # "sameHost":Z
    .end local v26    # "sameProtocol":Z
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v13    # "lastHyphenPos":I
    .restart local v14    # "lastPos":Ljava/lang/String;
    .restart local v22    # "rangeRequestLastPos":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 344
    .local v7, "e":Ljava/lang/NumberFormatException;
    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    .line 345
    .restart local v20    # "printException":Ljava/lang/Throwable;
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MediaHTTPConnectionEx "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "exception toString: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 358
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v13    # "lastHyphenPos":I
    .end local v14    # "lastPos":Ljava/lang/String;
    .end local v20    # "printException":Ljava/lang/Throwable;
    .end local v22    # "rangeRequestLastPos":Ljava/lang/String;
    :cond_1c
    const/16 v32, 0xce

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "Content-Range"

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 365
    .local v5, "contentRange":Ljava/lang/String;
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 366
    if-eqz v5, :cond_1d

    .line 371
    const/16 v32, 0x2f

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .line 372
    .local v15, "lastSlashPos":I
    if-ltz v15, :cond_1d

    .line 373
    add-int/lit8 v32, v15, 0x1

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v30

    .line 375
    .local v30, "total":Ljava/lang/String;
    :try_start_4
    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 393
    .end local v5    # "contentRange":Ljava/lang/String;
    .end local v15    # "lastSlashPos":I
    .end local v30    # "total":Ljava/lang/String;
    :cond_1d
    :goto_9
    const-wide/16 v32, 0x0

    cmp-long v32, p1, v32

    if-lez v32, :cond_20

    const/16 v32, 0xce

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_20

    .line 396
    :try_start_5
    new-instance v32, Ljava/io/IOException;

    invoke-direct/range {v32 .. v32}, Ljava/io/IOException;-><init>()V

    throw v32

    .line 376
    .restart local v5    # "contentRange":Ljava/lang/String;
    .restart local v15    # "lastSlashPos":I
    .restart local v30    # "total":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 377
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    new-instance v20, Ljava/lang/Throwable;

    invoke-direct/range {v20 .. v20}, Ljava/lang/Throwable;-><init>()V

    .line 378
    .restart local v20    # "printException":Ljava/lang/Throwable;
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "MediaHTTPConnectionEx "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v34

    const/16 v35, 0x0

    aget-object v34, v34, v35

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, "exception toString: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 386
    .end local v5    # "contentRange":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .end local v15    # "lastSlashPos":I
    .end local v20    # "printException":Ljava/lang/Throwable;
    .end local v30    # "total":Ljava/lang/String;
    :cond_1e
    const/16 v32, 0xc8

    move/from16 v0, v24

    move/from16 v1, v32

    if-eq v0, v1, :cond_1f

    .line 387
    new-instance v32, Ljava/io/IOException;

    invoke-direct/range {v32 .. v32}, Ljava/io/IOException;-><init>()V

    throw v32

    .line 389
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 390
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[200 OK] mTotalSize: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 400
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mRangeRequested:Z

    move/from16 v32, v0

    if-eqz v32, :cond_21

    const/16 v32, 0xc8

    move/from16 v0, v24

    move/from16 v1, v32

    if-ne v0, v1, :cond_21

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "Transfer-Encoding"

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "TrensferEncoding":Ljava/lang/String;
    if-eqz v4, :cond_21

    const-string v32, "chunked"

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_21

    .line 404
    const-string v32, "MediaHTTPConnectionEx"

    const-string v33, "We requested a content range. server response with 200 Transfer-Encoding: chunked field in response header"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mServerSupportRangeRequest:Z

    .line 409
    .end local v4    # "TrensferEncoding":Ljava/lang/String;
    :cond_21
    new-instance v32, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/lge/media/MediaHTTPConnectionEx;->mInputStream:Ljava/io/InputStream;

    .line 411
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mIsHttpTimeSeek:Z

    move/from16 v32, v0

    if-nez v32, :cond_23

    .line 412
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 461
    :cond_22
    :goto_a
    return-void

    .line 414
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    move-object/from16 v32, v0

    const-string v33, "TimeSeekRange.dlna.org"

    invoke-virtual/range {v32 .. v33}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 422
    .local v29, "timeSeekHeader":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/lge/media/MediaHTTPConnectionEx;->parseTimeSeekRangeHeader(Ljava/lang/String;)Z

    .line 429
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_24

    .line 430
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 431
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seektoEx] startByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/lge/media/MediaHTTPConnectionEx;->parseContentLengthHeader()J

    move-result-wide v32

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 437
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_25

    .line 438
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v32, v0

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 439
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seektoEx] totalByte:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->totalByte:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 433
    :cond_24
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 434
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seektoEx] this.mCurrentOffset:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 441
    :cond_25
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-ltz v32, :cond_22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-lez v32, :cond_22

    .line 442
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->startByte:J

    move-wide/from16 v34, v0

    add-long v32, v32, v34

    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    .line 443
    const-string v32, "MediaHTTPConnectionEx"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "[seektoEx] this.mTotalSize:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/media/MediaHTTPConnectionEx;->mTotalSize:J

    move-wide/from16 v34, v0

    invoke-virtual/range {v33 .. v35}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_a
.end method

.method protected teardownConnection()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_0

    .line 138
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mInputStream:Ljava/io/InputStream;

    .line 139
    const-string v2, "MediaHTTPConnectionEx"

    const-string/jumbo v3, "this.mConnection.disconnect();"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :try_start_0
    iget-object v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :goto_0
    const-string v2, "MediaHTTPConnectionEx"

    const-string/jumbo v3, "this.mConnection.disconnected;"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput-object v4, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mConnection:Ljava/net/HttpURLConnection;

    .line 150
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/lge/media/MediaHTTPConnectionEx;->mCurrentOffset:J

    .line 152
    :cond_0
    return-void

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "rethrown":Ljava/lang/RuntimeException;
    const-string v2, "MediaHTTPConnectionEx"

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 144
    .end local v1    # "rethrown":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "ignored":Ljava/lang/Exception;
    const-string v2, "MediaHTTPConnectionEx"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
