.class Landroid/view/PenRecognitionFilter$PenIDFinder;
.super Ljava/lang/Object;
.source "PenRecognitionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PenRecognitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenIDFinder"
.end annotation


# instance fields
.field private mAvgDistance:F

.field private mAvgPressure:F

.field private mCnt:I

.field private mIsEventInEdgeRegion:Z

.field private mIsEventInPalmRegion:Z

.field private mIsPen:Z

.field private mResult:F

.field final synthetic this$0:Landroid/view/PenRecognitionFilter;


# direct methods
.method public constructor <init>(Landroid/view/PenRecognitionFilter;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->this$0:Landroid/view/PenRecognitionFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/view/PenRecognitionFilter$PenIDFinder;->init()V

    .line 64
    return-void
.end method


# virtual methods
.method public addInfo(IIFFFZ)V
    .locals 10
    .param p1, "velX"    # I
    .param p2, "velY"    # I
    .param p3, "y"    # F
    .param p4, "z"    # F
    .param p5, "w"    # F
    .param p6, "edge"    # Z

    .prologue
    .line 77
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    .line 78
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    const/16 v9, 0x14

    if-lt v8, v9, :cond_4

    const/16 v0, 0x14

    .line 80
    .local v0, "count":I
    :goto_0
    mul-int v8, p1, p2

    int-to-float v3, v8

    .line 81
    .local v3, "mulVel":F
    div-float v4, v3, p3

    .line 83
    .local v4, "newDAvr":F
    if-lez v0, :cond_0

    .line 84
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    int-to-float v9, v0

    div-float v9, p4, v9

    add-float/2addr v8, v9

    iput v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    .line 85
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgDistance:F

    add-int/lit8 v9, v0, -0x1

    int-to-float v9, v9

    mul-float/2addr v8, v9

    int-to-float v9, v0

    div-float/2addr v8, v9

    int-to-float v9, v0

    div-float v9, v4, v9

    add-float/2addr v8, v9

    iput v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgDistance:F

    .line 88
    :cond_0
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    const/high16 v9, 0x420c0000    # 35.0f

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_1

    const/high16 v8, 0x41700000    # 15.0f

    cmpl-float v8, p5, v8

    if-lez v8, :cond_2

    .line 89
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsPen:Z

    .line 92
    :cond_2
    if-nez p6, :cond_3

    .line 93
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInEdgeRegion:Z

    .line 96
    :cond_3
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    const/high16 v9, 0x41a00000    # 20.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_5

    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    const/high16 v9, 0x41a00000    # 20.0f

    sub-float v1, v8, v9

    .line 97
    .local v1, "deltaZ":F
    :goto_1
    mul-float v8, v1, v1

    const/high16 v9, 0x3f800000    # 1.0f

    add-float v7, v8, v9

    .line 98
    .local v7, "zVal":F
    iget-boolean v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsPen:Z

    if-eqz v8, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    .line 99
    .local v6, "penVal":F
    :goto_2
    iget-boolean v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInPalmRegion:Z

    if-eqz v8, :cond_8

    const/4 v5, 0x0

    .line 100
    .local v5, "palmVal":F
    :goto_3
    iget-boolean v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInEdgeRegion:Z

    if-eqz v8, :cond_9

    const/4 v2, 0x0

    .line 101
    .local v2, "edgeVal":F
    :goto_4
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgDistance:F

    mul-float/2addr v8, v6

    mul-float/2addr v8, v5

    mul-float/2addr v8, v2

    int-to-float v9, v0

    mul-float/2addr v8, v9

    div-float/2addr v8, v7

    mul-float v9, v6, v5

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    iput v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mResult:F

    .line 102
    return-void

    .line 78
    .end local v0    # "count":I
    .end local v1    # "deltaZ":F
    .end local v2    # "edgeVal":F
    .end local v3    # "mulVel":F
    .end local v4    # "newDAvr":F
    .end local v5    # "palmVal":F
    .end local v6    # "penVal":F
    .end local v7    # "zVal":F
    :cond_4
    iget v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    goto :goto_0

    .line 96
    .restart local v0    # "count":I
    .restart local v3    # "mulVel":F
    .restart local v4    # "newDAvr":F
    :cond_5
    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    const/high16 v9, 0x41700000    # 15.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_6

    iget v8, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    const/high16 v9, 0x41700000    # 15.0f

    sub-float v1, v8, v9

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 98
    .restart local v1    # "deltaZ":F
    .restart local v7    # "zVal":F
    :cond_7
    const/4 v6, 0x0

    goto :goto_2

    .line 99
    .restart local v6    # "penVal":F
    :cond_8
    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_3

    .line 100
    .restart local v5    # "palmVal":F
    :cond_9
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_4
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    return v0
.end method

.method public getResult()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mResult:F

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 67
    iput v1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    .line 68
    iput v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    .line 69
    iput v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgDistance:F

    .line 70
    iput v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mResult:F

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsPen:Z

    .line 72
    iput-boolean v1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInPalmRegion:Z

    .line 73
    iput-boolean v1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInEdgeRegion:Z

    .line 74
    return-void
.end method

.method public isFinger()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsPen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPen()Z
    .locals 2

    .prologue
    .line 106
    iget v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInEdgeRegion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInPalmRegion:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsPen:Z

    goto :goto_0
.end method

.method public setEdgeRegion(Z)V
    .locals 0
    .param p1, "isInEdgeRegion"    # Z

    .prologue
    .line 109
    iput-boolean p1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInEdgeRegion:Z

    return-void
.end method

.method public setPalmRegion(Z)V
    .locals 0
    .param p1, "isInPalmRegion"    # Z

    .prologue
    .line 108
    iput-boolean p1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mIsEventInPalmRegion:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] mAvgPressure["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgPressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] mAvgDistance["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/PenRecognitionFilter$PenIDFinder;->mAvgDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] isPen["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/PenRecognitionFilter$PenIDFinder;->isPen()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] result["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/PenRecognitionFilter$PenIDFinder;->getResult()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
