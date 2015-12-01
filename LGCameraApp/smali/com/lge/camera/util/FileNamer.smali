.class public Lcom/lge/camera/util/FileNamer;
.super Ljava/lang/Object;
.source "FileNamer.java"


# static fields
.field private static final BURSTID_LENGTH_DCM:I = 0x8

.field private static final BURSTID_LENGTH_NEWNAMING:I = 0xf

.field private static final BURSTID_LENGTH_VZW:I = 0xa

.field public static final STATUS_NOT_READY:I = 0x0

.field public static final STATUS_READY:I = 0x1

.field private static mFileNamer:Lcom/lge/camera/util/FileNamer;

.field private static sBurstFirstTime:Ljava/lang/String;


# instance fields
.field private mBurstCount:I

.field private mCheckAVIThread:Ljava/lang/Thread;

.field private mCheckJPEGThread:Ljava/lang/Thread;

.field private mCheckThread:Ljava/lang/Thread;

.field private mCurrFileName:Ljava/lang/String;

.field private mDCFFileName:Ljava/lang/String;

.field private mDCFFileStatus:I

.field private mDCFFirstNumber:I

.field private mDCFNumber:J

.field private mDigitnum:I

.field private mImageFileName:Ljava/lang/String;

.field private mImageFileNumber:J

.field private mImageFileStatus:I

.field private mInCheckDCF:Z

.field private mInCheckImage:Z

.field private mInCheckVideo:Z

.field private mLastMode:I

.field private mScenemode:Ljava/lang/String;

.field private mStopThread:Z

.field private mStorageOldState:I

.field private mStorageState:I

.field private mTMCount:I

.field private mTMFirstTime:Ljava/lang/String;

.field private mTMsaveCount:I

.field private mTakeTime:Ljava/lang/String;

.field private mTempBurstFirstTime:Ljava/lang/String;

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFileNumber:J

.field private mVideoFileStatus:I

.field private temp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, ""

    sput-object v0, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageOldState:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    .line 50
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 51
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 52
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 58
    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 60
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 61
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    .line 62
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    .line 64
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mBurstCount:I

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mTMCount:I

    .line 69
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mTMsaveCount:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mTMFirstTime:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mTakeTime:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mScenemode:Ljava/lang/String;

    .line 729
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    return-void
.end method

.method static synthetic access$002(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/util/FileNamer;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/lge/camera/util/FileNamer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    return p1
.end method

.method static synthetic access$108(Lcom/lge/camera/util/FileNamer;)J
    .locals 4
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/util/FileNamer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/util/FileNamer;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/util/FileNamer;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    return v0
.end method

.method static synthetic access$1500(IIJ)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/util/FileNamer;)V
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/lge/camera/util/FileNamer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    return p1
.end method

.method static synthetic access$200(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/util/FileNamer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    return p1
.end method

.method static synthetic access$400(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/lge/camera/util/FileNamer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    return p1
.end method

.method static synthetic access$602(Lcom/lge/camera/util/FileNamer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/camera/util/FileNamer;)J
    .locals 2
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/lge/camera/util/FileNamer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    return-wide p1
.end method

.method static synthetic access$800(J)Ljava/lang/String;
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/camera/util/FileNamer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/lge/camera/util/FileNamer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    return-object p1
.end method

.method private addDCFCount()V
    .locals 12

    .prologue
    const/16 v11, 0x5a

    const/16 v10, 0x39

    .line 848
    const/4 v1, 0x0

    .local v1, "digitNum":I
    const/4 v0, 0x0

    .line 849
    .local v0, "dcfFirstNumber":I
    const-wide/16 v2, 0x0

    .line 851
    .local v2, "dcfNumber":J
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 852
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 853
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 855
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 856
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 861
    .local v4, "tmpNum":D
    long-to-double v6, v2

    cmpg-double v6, v4, v6

    if-gtz v6, :cond_2

    .line 862
    const-wide/16 v2, 0x0

    .line 863
    const/16 v6, 0x2f

    if-le v0, v6, :cond_0

    if-lt v0, v10, :cond_1

    :cond_0
    const/16 v6, 0x41

    if-le v0, v6, :cond_3

    if-ge v0, v11, :cond_3

    .line 865
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 875
    :cond_2
    :goto_0
    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 876
    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 877
    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 881
    return-void

    .line 866
    :cond_3
    if-ne v0, v10, :cond_4

    .line 867
    const/16 v0, 0x41

    goto :goto_0

    .line 868
    :cond_4
    if-ne v0, v11, :cond_2

    .line 869
    const/16 v0, 0x30

    .line 870
    add-int/lit8 v1, v1, 0x1

    .line 872
    const-wide/16 v2, 0x1

    goto :goto_0
.end method

.method public static get()Lcom/lge/camera/util/FileNamer;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/lge/camera/util/FileNamer;

    invoke-direct {v0}, Lcom/lge/camera/util/FileNamer;-><init>()V

    sput-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    .line 84
    :cond_0
    sget-object v0, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    return-object v0
.end method

.method private getModename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "shotmode"    # Ljava/lang/String;

    .prologue
    .line 1109
    const-string v2, "shotmode_panorama"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "shotmode_plane_panorama"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1111
    :cond_0
    const-string v1, "_Pano"

    .line 1137
    .local v1, "sMode":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1113
    .end local v1    # "sMode":Ljava/lang/String;
    :cond_1
    const-string v2, "shotmode_free_panorama"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1114
    const-string v1, "_VRpano"

    .restart local v1    # "sMode":Ljava/lang/String;
    goto :goto_0

    .line 1116
    .end local v1    # "sMode":Ljava/lang/String;
    :cond_2
    const-string v2, "shotmode_hdr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1117
    const-string v1, "_HDR"

    .restart local v1    # "sMode":Ljava/lang/String;
    goto :goto_0

    .line 1119
    .end local v1    # "sMode":Ljava/lang/String;
    :cond_3
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1121
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mBurstCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mBurstCount:I

    .line 1122
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mBurstCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1124
    .local v0, "sCount":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_Burst"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1128
    .restart local v1    # "sMode":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "sCount":Ljava/lang/String;
    .end local v1    # "sMode":Ljava/lang/String;
    :cond_5
    const-string v2, "shotmode_normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/lge/camera/util/FileNamer;->mScenemode:Ljava/lang/String;

    const-string v3, "night"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1130
    const-string v1, "_Night"

    .line 1131
    .restart local v1    # "sMode":Ljava/lang/String;
    const-string v2, ""

    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mScenemode:Ljava/lang/String;

    goto :goto_0

    .line 1134
    .end local v1    # "sMode":Ljava/lang/String;
    :cond_6
    const-string v1, ""

    .restart local v1    # "sMode":Ljava/lang/String;
    goto :goto_0
.end method

.method private getNamebyDate()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1144
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1145
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1146
    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1148
    .local v0, "CurrentTime":Ljava/lang/String;
    const/16 v2, 0x8

    .line 1149
    .local v2, "DATE_LENGTH":I
    const/4 v1, 0x0

    .line 1151
    .local v1, "DATE_FIRST_INDEX":I
    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1153
    .local v3, "sYMD":Ljava/lang/String;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNamebyDate  sYMD: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    return-object v3
.end method

.method private getNamebyTime()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1161
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 1162
    .local v4, "time":Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 1163
    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    .local v0, "CurrentTime":Ljava/lang/String;
    const/4 v2, 0x6

    .line 1166
    .local v2, "TIME_LENGTH":I
    const/16 v1, 0x9

    .line 1168
    .local v1, "TIME_FIRST_INDEX":I
    const/16 v5, 0x9

    const/16 v6, 0xf

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1170
    .local v3, "sHMS":Ljava/lang/String;
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNamebyTime  sHMS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    return-object v3
.end method

.method private initializeFileNumber(Landroid/content/Context;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # I

    .prologue
    const/4 v3, -0x1

    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 109
    const-string v0, "CameraApp"

    const-string v1, "Cannot initialize file number because context is null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {p1, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedPictureCount(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 115
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 116
    iput-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 118
    :cond_1
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 120
    invoke-static {p1, p2}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedVideoCount(Landroid/content/Context;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 122
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    .line 123
    iput-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 125
    :cond_2
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 127
    invoke-static {p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedDCFFirstCount(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 128
    invoke-static {p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedDCFCount(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 129
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-ne v0, v3, :cond_3

    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    .line 130
    iput-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 132
    :cond_3
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-nez v0, :cond_5

    .line 133
    :cond_4
    const/16 v0, 0x30

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 136
    :cond_5
    invoke-static {p1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getAccumulatedDCFDigit(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 137
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    if-nez v0, :cond_6

    .line 138
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 140
    :cond_6
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    goto :goto_0
.end method

.method private makeCurrentDateToString()Ljava/lang/String;
    .locals 14

    .prologue
    const/16 v13, 0xb

    const/4 v12, 0x6

    const/4 v11, 0x4

    .line 747
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .line 748
    .local v6, "time":Landroid/text/format/Time;
    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    .line 750
    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "CurrentTime":Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "YYYYMMDDTHHDDSS : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 754
    .local v4, "month":Ljava/lang/String;
    const/16 v8, 0x8

    invoke-virtual {v0, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, "monthDay":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 756
    .local v7, "year":Ljava/lang/String;
    const/16 v8, 0x9

    invoke-virtual {v0, v8, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 757
    .local v2, "hour":Ljava/lang/String;
    const/16 v8, 0xd

    invoke-virtual {v0, v13, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 759
    .local v3, "minute":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 760
    .local v1, "fileName":Ljava/lang/String;
    const-string v8, "CameraApp"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fileName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    return-object v1
.end method

.method private static makeFileNameByDCFRule(IIJ)Ljava/lang/String;
    .locals 10
    .param p0, "firstNumber"    # I
    .param p1, "digit"    # I
    .param p2, "count"    # J

    .prologue
    .line 235
    const/4 v3, 0x0

    .line 237
    .local v3, "tmpLength":I
    const-string v5, "CAM%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-char v8, p0

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "fileName":Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "fileNum":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 241
    sub-int v4, p1, v3

    .line 242
    .local v4, "tmpNum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 242
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 247
    return-object v0
.end method

.method private static makePictureFileName(J)Ljava/lang/String;
    .locals 6
    .param p0, "count"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 194
    const-wide/32 v2, 0x1869f

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 195
    const-string v1, "IMG%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 197
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    const-string v1, "IMG%05d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 200
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x3e7

    cmp-long v1, p0, v2

    if-lez v1, :cond_2

    .line 201
    const-string v1, "IMG%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v1, "IMG%03d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method private makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "AscCode"    # J

    .prologue
    .line 733
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 734
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 737
    :cond_0
    const-wide/16 v0, 0x7a

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 738
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 742
    :goto_0
    return-object v0

    .line 741
    :cond_1
    const-wide/16 p2, 0x7a

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    long-to-int v1, p2

    int-to-char v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/lge/camera/util/FileNamer;->temp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static makeVideoFileName(J)Ljava/lang/String;
    .locals 6
    .param p0, "count"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 217
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 218
    const-wide/32 v2, 0x1869f

    cmp-long v1, p0, v2

    if-lez v1, :cond_0

    .line 219
    const-string v1, "MOV%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "fileName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 221
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_0
    const-string v1, "MOV%05d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 224
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_1
    const-wide/16 v2, 0x3e7

    cmp-long v1, p0, v2

    if-lez v1, :cond_2

    .line 225
    const-string v1, "MOV%d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0

    .line 227
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    const-string v1, "MOV%03d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "fileName":Ljava/lang/String;
    goto :goto_0
.end method

.method private processBurstCount(Z)V
    .locals 7
    .param p1, "isBurstFirst"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1177
    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mBurstCount:I

    const/16 v5, 0x14

    if-eq v4, v5, :cond_0

    if-eqz p1, :cond_1

    .line 1178
    :cond_0
    iput v6, p0, Lcom/lge/camera/util/FileNamer;->mBurstCount:I

    .line 1179
    const/4 v1, 0x0

    .line 1181
    .local v1, "cmpLength":I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 1182
    const/16 v1, 0x8

    .line 1189
    :goto_0
    sget-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_4

    .line 1190
    iget-object v4, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    sput-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    .line 1213
    .end local v1    # "cmpLength":I
    :cond_1
    :goto_1
    return-void

    .line 1183
    .restart local v1    # "cmpLength":I
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    .line 1184
    const/16 v1, 0xa

    goto :goto_0

    .line 1186
    :cond_3
    const/16 v1, 0xf

    goto :goto_0

    .line 1193
    :cond_4
    sget-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1195
    sget-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    const-string v5, ".*\\(.*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1198
    sget-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    const-string v5, "\\("

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1199
    .local v0, "arr":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v0, v4

    const-string v5, ")"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1200
    .local v2, "countString":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1201
    .local v3, "sameCount":I
    add-int/lit8 v3, v3, 0x1

    .line 1202
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    goto :goto_1

    .line 1206
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v2    # "countString":Ljava/lang/String;
    .end local v3    # "sameCount":I
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    goto/16 :goto_1

    .line 1210
    :cond_6
    iget-object v4, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    sput-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private declared-synchronized startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "useThread"    # Z

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCheckFileName (mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", useThread : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    if-eqz v0, :cond_0

    .line 337
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage State = NOT AVAILABLE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    const-string v0, "CameraApp"

    const-string v1, "startCheckFileName stopThread."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 343
    iput p2, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 346
    if-nez p2, :cond_1

    .line 347
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamera(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 349
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameForCamcorder(Landroid/content/Context;ILjava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private startCheckFileNameCDMA(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "mode"    # I
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "shotMode"    # Ljava/lang/String;

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 767
    const-string v3, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileNameCDMA mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    if-nez p1, :cond_3

    .line 770
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 773
    const-wide/16 v4, 0x60

    .line 775
    .local v4, "start":J
    const-string v3, "shotmode_full_continuous"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 776
    sget-object v0, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    .line 777
    .local v0, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 778
    const/4 v2, 0x0

    .line 780
    .local v2, "samecount":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 782
    .local v1, "fullfileName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 783
    add-int/lit8 v2, v2, 0x1

    .line 784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 787
    :cond_0
    if-lez v2, :cond_1

    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    .end local v1    # "fullfileName":Ljava/lang/String;
    .end local v2    # "samecount":I
    :cond_1
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 800
    iput-boolean v8, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 802
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 821
    :goto_1
    return-object v3

    .line 793
    .end local v0    # "fileName":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->makeCurrentDateToString()Ljava/lang/String;

    move-result-object v0

    .line 794
    .restart local v0    # "fileName":Ljava/lang/String;
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".jpg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 795
    add-long/2addr v4, v10

    .line 796
    invoke-direct {p0, v0, v4, v5}, Lcom/lge/camera/util/FileNamer;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 804
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v4    # "start":J
    :cond_3
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 807
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->makeCurrentDateToString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .restart local v0    # "fileName":Ljava/lang/String;
    const-wide/16 v4, 0x60

    .line 812
    .restart local v4    # "start":J
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".mp4"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".3gp"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 814
    :cond_4
    add-long/2addr v4, v10

    .line 815
    invoke-direct {p0, v0, v4, v5}, Lcom/lge/camera/util/FileNamer;->makePictureFileNameForCDMA(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 818
    :cond_5
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 819
    iput-boolean v8, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 821
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    goto :goto_1
.end method

.method private startCheckFileNameForCamcorder(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # I
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "useThread"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 355
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-ne v1, v9, :cond_1

    .line 356
    const-string v1, "CameraApp"

    const-string v4, "mVideoFileStatus == STATUS_READY"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    if-nez p4, :cond_6

    .line 361
    iput-boolean v9, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 362
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName video without thread"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 364
    .local v2, "startTime":J
    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "fileName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".3gp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 368
    :cond_3
    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 369
    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {v4, v5}, Lcom/lge/camera/util/FileNamer;->makeVideoFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 370
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v1, :cond_2

    .line 375
    :cond_4
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v1, :cond_5

    .line 376
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName is stop without thread in Video!"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iput-boolean v8, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 378
    iput-boolean v8, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    goto :goto_0

    .line 381
    :cond_5
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 382
    iput v9, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 383
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName is finished without thread (elapse time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iput-boolean v8, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {p1, p2, v4, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    goto/16 :goto_0

    .line 393
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "startTime":J
    :cond_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/util/FileNamer$1;

    invoke-direct {v4, p0, p3, p1, p2}, Lcom/lge/camera/util/FileNamer$1;-><init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    .line 431
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private startCheckFileNameForCamera(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # I
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "useThread"    # Z

    .prologue
    .line 437
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    .line 438
    const-string v1, "CameraApp"

    const-string v6, "mImageFileStatus == STATUS_READY"

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    if-nez p4, :cond_5

    .line 443
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 444
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName image without thread: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 446
    .local v4, "startTime":J
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 447
    .local v2, "imageFileNumber":J
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "fileName":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    .line 450
    invoke-static {v2, v3}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    .line 451
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v1, :cond_2

    .line 455
    :cond_3
    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 457
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v1, :cond_4

    .line 458
    const-string v1, "CameraApp"

    const-string v6, "startCheckFileName is stop in Camera!"

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 460
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    goto :goto_0

    .line 463
    :cond_4
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 464
    const/4 v1, 0x1

    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 465
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "image file is ready "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v1, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startCheckFileName is finished without thread (elapse time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 469
    if-eqz p1, :cond_0

    .line 470
    iget-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-static {p1, p2, v6, v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    goto/16 :goto_0

    .line 474
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "imageFileNumber":J
    .end local v4    # "startTime":J
    :cond_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v6, Lcom/lge/camera/util/FileNamer$2;

    invoke-direct {v6, p0, p3, p1, p2}, Lcom/lge/camera/util/FileNamer$2;-><init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;I)V

    invoke-direct {v1, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 513
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private declared-synchronized startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "dir"    # Ljava/lang/String;
    .param p4, "useThread"    # Z

    .prologue
    const/4 v6, 0x1

    .line 519
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF (mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", useThread : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    if-eqz v1, :cond_1

    .line 522
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storage State = NOT AVAILABLE,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 525
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v1, v6, :cond_2

    .line 526
    const-string v1, "CameraApp"

    const-string v4, "mDCFFileStatus == STATUS_READY"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 530
    :cond_2
    :try_start_2
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName stopThread."

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 532
    iput p2, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    .line 533
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 535
    if-nez p4, :cond_7

    .line 536
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    .line 537
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF without thread : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 540
    .local v2, "startTime":J
    const/4 v0, 0x0

    .line 541
    .local v0, "fileName":Ljava/lang/String;
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {v1, v4, v6, v7}, Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 545
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".jpg"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".3gp"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".mp4"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 546
    :cond_4
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    .line 547
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    iget-wide v6, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {v1, v4, v6, v7}, Lcom/lge/camera/util/FileNamer;->makeFileNameByDCFRule(IIJ)Ljava/lang/String;

    move-result-object v0

    .line 548
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v1, :cond_3

    .line 553
    :cond_5
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    if-eqz v1, :cond_6

    .line 554
    const-string v1, "CameraApp"

    const-string v4, "startCheckFileName_DCF is stop without Thread by DCF rules!"

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    .line 556
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    goto/16 :goto_0

    .line 560
    :cond_6
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 561
    const/4 v1, 0x1

    iput v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 562
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dcf file is ready "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v1, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileName_DCF is finished without thread (elapse time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    .line 567
    if-eqz p1, :cond_0

    .line 568
    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {p1, v4, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 569
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-static {p1, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 570
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-static {p1, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 573
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "startTime":J
    :cond_7
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/util/FileNamer$3;

    invoke-direct {v4, p0, p3, p1}, Lcom/lge/camera/util/FileNamer$3;-><init>(Lcom/lge/camera/util/FileNamer;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    .line 615
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private startCheckFileNamebyTime(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "cameraMode"    # I
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "shotmode"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 994
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileNameCDMA mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const-string v0, ""

    .line 998
    .local v0, "fileName":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 999
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 1000
    invoke-virtual {p0, p3, p1}, Lcom/lge/camera/util/FileNamer;->makeFilenamebyTime(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1002
    .local v1, "fullfileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1004
    .local v2, "samecount":I
    :goto_0
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1005
    add-int/lit8 v2, v2, 0x1

    .line 1006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1008
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filename exist :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1010
    :cond_0
    if-lez v2, :cond_1

    .line 1011
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    :cond_1
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 1014
    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    .line 1016
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileNamebyTime mImageFileName:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 1040
    :goto_1
    return-object v3

    .line 1022
    .end local v1    # "fullfileName":Ljava/lang/String;
    .end local v2    # "samecount":I
    :cond_2
    iput-boolean v7, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 1023
    invoke-virtual {p0, p3, p1}, Lcom/lge/camera/util/FileNamer;->makeFilenamebyTime(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1025
    .restart local v1    # "fullfileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1028
    .restart local v2    # "samecount":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".3gp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1030
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 1031
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1033
    :cond_4
    if-lez v2, :cond_5

    .line 1034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1036
    :cond_5
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 1037
    iput-boolean v6, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    .line 1038
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startCheckFileNamebyTime mVideoFileName:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private subtractDCFCount()V
    .locals 10

    .prologue
    const/16 v7, 0x5a

    const-wide/16 v8, 0x1

    const/16 v6, 0x30

    .line 886
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    sub-long/2addr v2, v8

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 887
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 890
    .local v0, "tmpNum":D
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-ne v2, v6, :cond_1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 891
    double-to-long v2, v0

    sub-long/2addr v2, v8

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 892
    iput v7, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 893
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    .line 906
    :cond_0
    :goto_0
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subtractDCFCount "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void

    .line 894
    :cond_1
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 895
    double-to-long v2, v0

    sub-long/2addr v2, v8

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    .line 896
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-le v2, v6, :cond_2

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x3a

    if-lt v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x42

    if-le v2, v3, :cond_4

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x5b

    if-ge v2, v3, :cond_4

    .line 898
    :cond_3
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    goto :goto_0

    .line 899
    :cond_4
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    const/16 v3, 0x41

    if-ne v2, v3, :cond_5

    .line 900
    const/16 v2, 0x39

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    goto :goto_0

    .line 901
    :cond_5
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    if-ne v2, v6, :cond_0

    .line 902
    iput v7, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    .line 903
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    goto :goto_0
.end method


# virtual methods
.method public close(Landroid/content/Context;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # I

    .prologue
    const/4 v6, 0x0

    .line 144
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 1/4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    if-nez v1, :cond_0

    .line 146
    const-string v1, "CameraApp"

    const-string v2, "Already close()."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    if-eqz v1, :cond_2

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 154
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckImage:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckVideo:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mInCheckDCF:Z

    if-eqz v1, :cond_4

    .line 156
    :cond_3
    const-wide/16 v2, 0xa

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 162
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    if-eqz p1, :cond_5

    .line 163
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-static {p1, p2, v2, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedPictureCount(Landroid/content/Context;IJ)V

    .line 164
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 2/4 mImageFileNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-static {p1, p2, v2, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedVideoCount(Landroid/content/Context;IJ)V

    .line 167
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 3/4 mVideoFileNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-static {p1, v2, v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFCount(Landroid/content/Context;J)V

    .line 170
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-static {p1, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFFirstCount(Landroid/content/Context;I)V

    .line 171
    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-static {p1, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveAccumulatedDCFDigit(Landroid/content/Context;I)V

    .line 172
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FileNamingHelper close 4/4 mDCFNumber:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mDigitnum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_2
    iput-object v6, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 179
    iput-object v6, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 180
    iput-object v6, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 181
    iput-object v6, p0, Lcom/lge/camera/util/FileNamer;->mCurrFileName:Ljava/lang/String;

    .line 182
    sput-object v6, Lcom/lge/camera/util/FileNamer;->mFileNamer:Lcom/lge/camera/util/FileNamer;

    goto/16 :goto_0

    .line 175
    :cond_5
    const-string v1, "CameraApp"

    const-string v2, "Cannot accumulate DCF because context is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "useThread"    # Z

    .prologue
    const-wide/16 v6, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 281
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 297
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v1, v2, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    .line 299
    iput v4, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 300
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 301
    .local v0, "ret":Ljava/lang/String;
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 302
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .end local v0    # "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 283
    :pswitch_0
    if-nez p2, :cond_0

    .line 284
    const-string v1, "CameraApp"

    const-string v2, "getFileName for CDMA"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, ""

    invoke-direct {p0, p2, p4, v1}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameCDMA(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .restart local v0    # "ret":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    if-ne p2, v2, :cond_1

    .line 289
    const-string v1, ""

    invoke-direct {p0, p2, p4, v1}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameCDMA(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 290
    .restart local v0    # "ret":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v0    # "ret":Ljava/lang/String;
    :cond_1
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 304
    :cond_2
    if-nez p2, :cond_3

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    if-ne v1, v2, :cond_3

    .line 305
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 306
    iput v4, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 307
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 308
    .restart local v0    # "ret":Ljava/lang/String;
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 309
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0    # "ret":Ljava/lang/String;
    :cond_3
    if-ne p2, v2, :cond_4

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-ne v1, v2, :cond_4

    .line 312
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 313
    iput v4, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 314
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 315
    .restart local v0    # "ret":Ljava/lang/String;
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 316
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    .end local v0    # "ret":Ljava/lang/String;
    :cond_4
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public getFileNewName(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "useThread"    # Z
    .param p6, "shotMode"    # Ljava/lang/String;
    .param p7, "isBurstFirst"    # Z

    .prologue
    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 911
    const/4 v0, 0x0

    .line 913
    .local v0, "ret":Ljava/lang/String;
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileNewName   isBurstFirst  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-direct {p0, p7}, Lcom/lge/camera/util/FileNamer;->processBurstCount(Z)V

    .line 917
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseNewNamingRule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 918
    invoke-direct {p0, p2, p4, p6}, Lcom/lge/camera/util/FileNamer;->startCheckFileNamebyTime(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    :cond_0
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileNewName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    return-object v0

    .line 921
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 922
    if-nez p2, :cond_2

    .line 923
    const-string v1, "CameraApp"

    const-string v2, "getFileName for CDMA"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, p2, p4, p6}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameCDMA(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 925
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :cond_2
    if-ne p2, v4, :cond_0

    .line 928
    invoke-direct {p0, p2, p4, p6}, Lcom/lge/camera/util/FileNamer;->startCheckFileNameCDMA(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 929
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 935
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v1, v4, :cond_5

    .line 936
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->addDCFCount()V

    .line 937
    iput v5, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 938
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileName:Ljava/lang/String;

    .line 939
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 940
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_4
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "error! get file name fail!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 942
    :cond_5
    if-nez p2, :cond_6

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    if-ne v1, v4, :cond_6

    .line 943
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 944
    iput v5, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 945
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileName:Ljava/lang/String;

    .line 946
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 947
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 949
    :cond_6
    if-ne p2, v4, :cond_4

    iget v1, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-ne v1, v4, :cond_4

    .line 950
    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    .line 951
    iput v5, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 952
    iget-object v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileName:Ljava/lang/String;

    .line 953
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 954
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get new file name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFileStatus(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 628
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    if-ne v2, v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 629
    goto :goto_0

    .line 630
    :cond_2
    if-nez p1, :cond_3

    .line 631
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 633
    :cond_3
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public makeFilenamebyTime(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "shotmode"    # Ljava/lang/String;
    .param p2, "cameramode"    # I

    .prologue
    .line 1073
    if-nez p2, :cond_5

    .line 1075
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    .local v0, "filename_final":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1077
    .end local v0    # "filename_final":Ljava/lang/String;
    :cond_0
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mTMFirstTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename_final":Ljava/lang/String;
    goto :goto_0

    .line 1079
    .end local v0    # "filename_final":Ljava/lang/String;
    :cond_1
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mTMCount:I

    if-lez v2, :cond_3

    .line 1081
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mTMsaveCount:I

    iget v3, p0, Lcom/lge/camera/util/FileNamer;->mTMCount:I

    sub-int v1, v2, v3

    .line 1082
    .local v1, "index":I
    if-lez v1, :cond_2

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mTMFirstTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .restart local v0    # "filename_final":Ljava/lang/String;
    :goto_1
    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mTMCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mTMCount:I

    goto :goto_0

    .line 1086
    .end local v0    # "filename_final":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mTMFirstTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename_final":Ljava/lang/String;
    goto :goto_1

    .line 1091
    .end local v0    # "filename_final":Ljava/lang/String;
    .end local v1    # "index":I
    :cond_3
    iget-object v2, p0, Lcom/lge/camera/util/FileNamer;->mTakeTime:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/util/FileNamer;->mTakeTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename_final":Ljava/lang/String;
    goto/16 :goto_0

    .line 1094
    .end local v0    # "filename_final":Ljava/lang/String;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename_final":Ljava/lang/String;
    goto/16 :goto_0

    .line 1099
    .end local v0    # "filename_final":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/camera/util/FileNamer;->getModename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "filename_final":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public markTakeTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "shotmode"    # Ljava/lang/String;
    .param p2, "scenemode"    # Ljava/lang/String;

    .prologue
    .line 1046
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyTime()Ljava/lang/String;

    move-result-object v1

    .line 1047
    .local v1, "takeTime":Ljava/lang/String;
    const-string v2, "shotmode_full_continuous"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    invoke-virtual {p0, v1}, Lcom/lge/camera/util/FileNamer;->setBurstFirstTime(Ljava/lang/String;)V

    .line 1050
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markTakeTime mBurstFirstTime   : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    :   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    :goto_0
    return-void

    .line 1052
    :cond_0
    const-string v2, "shotmode_timemachine"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    .local v0, "filename":Ljava/lang/String;
    iput-object v0, p0, Lcom/lge/camera/util/FileNamer;->mTMFirstTime:Ljava/lang/String;

    .line 1056
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markTakeTime    mTMFirstTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    :   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    .end local v0    # "filename":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mTakeTime:Ljava/lang/String;

    .line 1062
    const-string v2, "shotmode_normal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1063
    iput-object p2, p0, Lcom/lge/camera/util/FileNamer;->mScenemode:Ljava/lang/String;

    .line 1065
    :cond_2
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "markTakeTime    shotmode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mTakeTime   :   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/util/FileNamer;->mTakeTime:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public reload(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "useThread"    # Z

    .prologue
    const/4 v2, 0x0

    .line 826
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseNewNamingRule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 830
    :cond_1
    const-string v0, "CameraApp"

    const-string v1, "&&&&&&&&&&&&& reload call"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-nez v0, :cond_2

    .line 833
    invoke-direct {p0, p1, p3}, Lcom/lge/camera/util/FileNamer;->initializeFileNumber(Landroid/content/Context;I)V

    .line 834
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 835
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 837
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0

    .line 840
    :cond_2
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 841
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public setBurstFirstTime(Ljava/lang/String;)V
    .locals 11
    .param p1, "takeTime"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x4

    .line 965
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v6

    if-ne v6, v9, :cond_0

    .line 967
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 968
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 969
    .local v1, "date":Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 971
    .local v4, "sYMD":Ljava/lang/String;
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 972
    .local v5, "sYY":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 973
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 974
    .local v3, "sMM":Ljava/lang/String;
    const/16 v6, 0x8

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "sDD":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    .line 980
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "sDD":Ljava/lang/String;
    .end local v3    # "sMM":Ljava/lang/String;
    .end local v4    # "sYMD":Ljava/lang/String;
    .end local v5    # "sYY":Ljava/lang/String;
    :goto_0
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setBurstFirstTime  temp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  : burstTime  :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/lge/camera/util/FileNamer;->sBurstFirstTime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    return-void

    .line 978
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->getNamebyTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/util/FileNamer;->mTempBurstFirstTime:Ljava/lang/String;

    goto :goto_0
.end method

.method public setErrorFeedback(I)V
    .locals 4
    .param p1, "mode"    # I

    .prologue
    const-wide/16 v2, 0x1

    .line 715
    if-nez p1, :cond_1

    .line 716
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 720
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/lge/camera/util/FileNamer;->subtractDCFCount()V

    .line 722
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error feedback dcf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFirstNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error feedback image = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", video = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    return-void

    .line 718
    :cond_1
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileNumber:J

    goto :goto_0
.end method

.method public setStorageState(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 646
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStorageState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageOldState:I

    if-ne v0, p5, :cond_0

    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mLastMode:I

    if-eq v0, p2, :cond_4

    .line 649
    :cond_0
    iput p5, p0, Lcom/lge/camera/util/FileNamer;->mStorageOldState:I

    .line 650
    iget v0, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    if-eqz v0, :cond_2

    .line 651
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storage state : NOT AVAILABLE, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/util/FileNamer;->mStorageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/lge/camera/util/FileNamer;->stopThread()V

    .line 653
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 654
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mVideoFileStatus:I

    .line 655
    iput v3, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 670
    :cond_1
    :goto_0
    return-void

    .line 657
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "storage state :  AVAILABLE "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {p0, p2}, Lcom/lge/camera/util/FileNamer;->getFileStatus(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 659
    const-string v0, "CameraApp"

    const-string v1, "setStorageState : startCheckFileName with thread"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    invoke-direct {p0, p1, p2, p4, v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 663
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0

    .line 668
    :cond_4
    const-string v0, "CameraApp"

    const-string v1, "setStorageState: status same"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTMSaveCount(I)V
    .locals 3
    .param p1, "saveCount"    # I

    .prologue
    .line 986
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mTMCount:I

    .line 987
    iput p1, p0, Lcom/lge/camera/util/FileNamer;->mTMsaveCount:I

    .line 989
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTMSaveCount :   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "useThread"    # Z

    .prologue
    .line 88
    const-string v0, "CameraApp"

    const-string v1, "create()-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseNewNamingRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/lge/camera/util/FileNamer;->initializeFileNumber(Landroid/content/Context;I)V

    .line 95
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 104
    :cond_1
    :goto_1
    const-string v0, "CameraApp"

    const-string v1, "create()-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 99
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_1
.end method

.method public stopThread()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 677
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckThread:Ljava/lang/Thread;

    .line 686
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 689
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 694
    :cond_1
    :goto_1
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckJPEGThread:Ljava/lang/Thread;

    .line 696
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 697
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 699
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 704
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/lge/camera/util/FileNamer;->mCheckAVIThread:Ljava/lang/Thread;

    .line 705
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/util/FileNamer;->mStopThread:Z

    .line 706
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 690
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 691
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 700
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 701
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public updateNextFileIndex(Landroid/content/Context;IILjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I
    .param p3, "storage"    # I
    .param p4, "dir"    # Ljava/lang/String;
    .param p5, "useThread"    # Z
    .param p6, "fileName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    .line 253
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getUseDCFRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mDCFFileStatus:I

    .line 256
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName_DCF(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 269
    :goto_0
    return-void

    .line 258
    :cond_0
    iput v2, p0, Lcom/lge/camera/util/FileNamer;->mImageFileStatus:I

    .line 259
    if-eqz p6, :cond_1

    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Lcom/lge/camera/util/FileNamer;->makePictureFileName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iget-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/lge/camera/util/FileNamer;->mImageFileNumber:J

    .line 263
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0

    .line 266
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/lge/camera/util/FileNamer;->startCheckFileName(Landroid/content/Context;IILjava/lang/String;Z)V

    goto :goto_0
.end method
