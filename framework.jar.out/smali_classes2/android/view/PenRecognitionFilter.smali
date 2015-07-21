.class public Landroid/view/PenRecognitionFilter;
.super Ljava/lang/Object;
.source "PenRecognitionFilter.java"

# interfaces
.implements Landroid/view/IEventFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PenRecognitionFilter$PalmRegion;,
        Landroid/view/PenRecognitionFilter$PenIDFinder;
    }
.end annotation


# static fields
.field private static final MAX_PEN_PRESSURE:I = 0x23

.field private static final MAX_SAMPLE_COUNT:I = 0x14

.field private static final MIN_PEN_COUNT:I = 0x1

.field private static final MIN_WIDTH_MINOR:I = 0xf

.field private static final Z_AVR_MAX_VALUE:I = 0x14

.field private static final Z_AVR_MIN_VALUE:I = 0xf


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdgeAreaForGripSuppression:I

.field private mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

.field private mIsUsingPalm:Z

.field private mIsUsingPen:Z

.field private mLargePalm:Z

.field private mNeedToRepeat:Z

.field private mPalmRegion:Landroid/view/PenRecognitionFilter$PalmRegion;

.field private mPenIDFinder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/PenRecognitionFilter$PenIDFinder;",
            ">;"
        }
    .end annotation
.end field

.field private mRegionInfo:Landroid/view/RegionInfo;

.field private mSavedTopID:I

.field private mUsingfinger:Z

.field private mValidXLeft:I

.field private mValidXRight:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasPreviousEventCanceled:Z

.field private reportIdBits:Ljava/util/BitSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/16 v0, 0x1e

    iput v0, p0, Landroid/view/PenRecognitionFilter;->mEdgeAreaForGripSuppression:I

    .line 169
    invoke-direct {p0}, Landroid/view/PenRecognitionFilter;->initPenPalmFilter()V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Landroid/view/PenRecognitionFilter;->mContext:Landroid/content/Context;

    .line 176
    invoke-static {}, Landroid/view/RegionInfo;->getLCDRatio()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/PenRecognitionFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-int v1, v1

    int-to-float v0, v1

    .line 177
    .local v0, "lcdDpi":F
    :goto_0
    float-to-double v2, v0

    const-wide v4, 0x400451eb851eb852L    # 2.54

    div-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/view/PenRecognitionFilter;->mEdgeAreaForGripSuppression:I

    .line 178
    invoke-direct {p0}, Landroid/view/PenRecognitionFilter;->initPenPalmFilter()V

    .line 180
    return-void

    .line 176
    .end local v0    # "lcdDpi":F
    :cond_0
    iget-object v1, p0, Landroid/view/PenRecognitionFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-int v1, v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/view/PenRecognitionFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/view/PenRecognitionFilter;

    .prologue
    .line 23
    iget-object v0, p0, Landroid/view/PenRecognitionFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initPenPalmFilter()V
    .locals 3

    .prologue
    .line 184
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    .line 185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    .line 186
    new-instance v1, Landroid/view/RegionInfo;

    iget v2, p0, Landroid/view/PenRecognitionFilter;->mEdgeAreaForGripSuppression:I

    invoke-direct {v1, v2}, Landroid/view/RegionInfo;-><init>(I)V

    iput-object v1, p0, Landroid/view/PenRecognitionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    .line 187
    new-instance v1, Landroid/view/PenRecognitionFilter$PalmRegion;

    invoke-direct {v1, p0}, Landroid/view/PenRecognitionFilter$PalmRegion;-><init>(Landroid/view/PenRecognitionFilter;)V

    iput-object v1, p0, Landroid/view/PenRecognitionFilter;->mPalmRegion:Landroid/view/PenRecognitionFilter$PalmRegion;

    .line 188
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/view/PenRecognitionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    new-instance v2, Landroid/view/PenRecognitionFilter$PenIDFinder;

    invoke-direct {v2, p0}, Landroid/view/PenRecognitionFilter$PenIDFinder;-><init>(Landroid/view/PenRecognitionFilter;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0}, Landroid/view/PenRecognitionFilter;->init()V

    .line 195
    return-void
.end method


# virtual methods
.method public filtering(Landroid/view/MotionEvent;)Z
    .locals 28
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 220
    .local v20, "pointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 221
    .local v10, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    .line 223
    .local v11, "actionIndex":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    .line 224
    sget-object v7, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 225
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mNeedToRepeat:Z

    .line 227
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v26, 0x3e8

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 230
    const/4 v12, 0x0

    .line 231
    .local v12, "hasPen":Z
    const/16 v16, 0x0

    .line 233
    .local v16, "isDetectedPalmEvent":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v13, v0, :cond_b

    .line 234
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 235
    .local v14, "id":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v0, v7

    move/from16 v24, v0

    .line 236
    .local v24, "x":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 237
    .local v6, "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v25

    .line 238
    .local v25, "z":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolMinor(I)F

    move-result v8

    .line 240
    .local v8, "w":F
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v14}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 241
    .local v4, "velX":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v14}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 242
    .local v5, "velY":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/PenRecognitionFilter;->mValidXLeft:I

    move/from16 v0, v24

    if-lt v0, v7, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/PenRecognitionFilter;->mValidXRight:I

    move/from16 v0, v24

    if-le v0, v7, :cond_7

    :cond_0
    const/4 v9, 0x1

    .line 243
    .local v9, "isEdge":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PenRecognitionFilter$PenIDFinder;

    .line 244
    .local v3, "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    if-eqz v10, :cond_1

    const/4 v7, 0x5

    if-ne v10, v7, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPalmRegion:Landroid/view/PenRecognitionFilter$PalmRegion;

    float-to-int v0, v6

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Landroid/view/PenRecognitionFilter$PalmRegion;->checkPalmRegion(II)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v11, v13, :cond_8

    const/16 v18, 0x1

    .line 246
    .local v18, "isInPalmRegion":Z
    :goto_2
    if-eqz v10, :cond_2

    const/4 v7, 0x5

    if-ne v10, v7, :cond_9

    :cond_2
    if-eqz v9, :cond_9

    if-ne v11, v13, :cond_9

    const/16 v17, 0x1

    .line 249
    .local v17, "isInEdgeRegion":Z
    :goto_3
    if-eqz v18, :cond_3

    .line 250
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/view/PenRecognitionFilter$PenIDFinder;->setPalmRegion(Z)V

    .line 252
    :cond_3
    if-eqz v17, :cond_4

    .line 253
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/view/PenRecognitionFilter$PenIDFinder;->setEdgeRegion(Z)V

    .line 256
    :cond_4
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float v7, v7, v25

    invoke-virtual/range {v3 .. v9}, Landroid/view/PenRecognitionFilter$PenIDFinder;->addInfo(IIFFFZ)V

    .line 258
    invoke-virtual {v3}, Landroid/view/PenRecognitionFilter$PenIDFinder;->isPen()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 259
    const/4 v12, 0x1

    .line 261
    :cond_5
    invoke-virtual {v3}, Landroid/view/PenRecognitionFilter$PenIDFinder;->isFinger()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 262
    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v25

    invoke-static {v0, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-ltz v7, :cond_a

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mLargePalm:Z

    .line 263
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPalmRegion:Landroid/view/PenRecognitionFilter$PalmRegion;

    float-to-int v0, v6

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/PenRecognitionFilter;->mLargePalm:Z

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v7, v14, v0, v1, v2}, Landroid/view/PenRecognitionFilter$PalmRegion;->assignPalm(IIIZ)V

    .line 265
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mLargePalm:Z

    if-eqz v7, :cond_6

    const/4 v7, 0x5

    if-eq v10, v7, :cond_6

    if-eqz v10, :cond_6

    .line 266
    const/16 v16, 0x1

    .line 233
    :cond_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 242
    .end local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    .end local v9    # "isEdge":Z
    .end local v17    # "isInEdgeRegion":Z
    .end local v18    # "isInPalmRegion":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 244
    .restart local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    .restart local v9    # "isEdge":Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_2

    .line 246
    .restart local v18    # "isInPalmRegion":Z
    :cond_9
    const/16 v17, 0x0

    goto :goto_3

    .line 262
    .restart local v17    # "isInEdgeRegion":Z
    :cond_a
    const/4 v7, 0x0

    goto :goto_4

    .line 271
    .end local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    .end local v4    # "velX":I
    .end local v5    # "velY":I
    .end local v6    # "y":F
    .end local v8    # "w":F
    .end local v9    # "isEdge":Z
    .end local v14    # "id":I
    .end local v17    # "isInEdgeRegion":Z
    .end local v18    # "isInPalmRegion":Z
    .end local v24    # "x":I
    .end local v25    # "z":F
    :cond_b
    if-eqz v16, :cond_d

    .line 272
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPalm:Z

    .line 277
    :goto_5
    const/high16 v21, -0x40800000    # -1.0f

    .line 278
    .local v21, "result":F
    const/16 v23, -0x1

    .line 280
    .local v23, "topID":I
    if-eqz v12, :cond_15

    .line 281
    const/4 v13, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v13, v0, :cond_e

    .line 282
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 283
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PenRecognitionFilter$PenIDFinder;

    .line 284
    .restart local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    invoke-virtual {v3}, Landroid/view/PenRecognitionFilter$PenIDFinder;->getResult()F

    move-result v19

    .line 286
    .local v19, "newResult":F
    cmpl-float v7, v19, v21

    if-lez v7, :cond_c

    .line 287
    move/from16 v21, v19

    .line 288
    move/from16 v23, v14

    .line 281
    :cond_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 274
    .end local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    .end local v14    # "id":I
    .end local v19    # "newResult":F
    .end local v21    # "result":F
    .end local v23    # "topID":I
    :cond_d
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPalm:Z

    goto :goto_5

    .line 292
    .restart local v21    # "result":F
    .restart local v23    # "topID":I
    :cond_e
    const/4 v7, -0x1

    move/from16 v0, v23

    if-eq v0, v7, :cond_10

    .line 293
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/BitSet;->set(I)V

    .line 294
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/PenRecognitionFilter;->mSavedTopID:I

    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_14

    const/16 v22, 0x0

    .line 296
    .local v22, "savedTopIDIsPen":Z
    :goto_7
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/PenRecognitionFilter;->mSavedTopID:I

    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v7, v0, :cond_10

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/PenRecognitionFilter;->mSavedTopID:I

    move/from16 v0, v23

    if-eq v0, v7, :cond_10

    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mLargePalm:Z

    if-nez v7, :cond_10

    .line 297
    sget-object v7, Landroid/view/IEventFilter$ReturnAct;->CANCEL:Landroid/view/IEventFilter$ReturnAct;

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 298
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mNeedToRepeat:Z

    .line 300
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mUsingfinger:Z

    if-eqz v7, :cond_f

    .line 301
    sget-object v7, Landroid/view/IEventFilter$ReturnAct;->IGNORE:Landroid/view/IEventFilter$ReturnAct;

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 304
    :cond_f
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mUsingfinger:Z

    .line 336
    .end local v22    # "savedTopIDIsPen":Z
    :cond_10
    :goto_8
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/PenRecognitionFilter;->mSavedTopID:I

    .line 338
    const/4 v7, 0x6

    if-eq v10, v7, :cond_11

    const/4 v7, 0x1

    if-ne v10, v7, :cond_13

    .line 339
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 340
    .local v15, "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 341
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PenRecognitionFilter$PenIDFinder;

    .line 343
    .restart local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    const/4 v7, 0x1

    if-eq v10, v7, :cond_12

    invoke-virtual {v3}, Landroid/view/PenRecognitionFilter$PenIDFinder;->isPen()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 344
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPen:Z

    .line 346
    :cond_12
    invoke-virtual {v3}, Landroid/view/PenRecognitionFilter$PenIDFinder;->init()V

    .line 348
    .end local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    .end local v14    # "id":I
    .end local v15    # "index":I
    :cond_13
    const/4 v7, 0x1

    return v7

    .line 294
    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/PenRecognitionFilter;->mSavedTopID:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/PenRecognitionFilter$PenIDFinder;

    invoke-virtual {v7}, Landroid/view/PenRecognitionFilter$PenIDFinder;->isPen()Z

    move-result v22

    goto :goto_7

    .line 308
    :cond_15
    const/4 v13, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v13, v0, :cond_1a

    .line 309
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 310
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/PenRecognitionFilter$PenIDFinder;

    .line 311
    .restart local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    invoke-virtual {v3}, Landroid/view/PenRecognitionFilter$PenIDFinder;->getCount()I

    move-result v19

    .line 313
    .local v19, "newResult":I
    move/from16 v0, v19

    int-to-float v7, v0

    cmpl-float v7, v7, v21

    if-lez v7, :cond_16

    .line 314
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    .line 315
    move/from16 v23, v14

    .line 318
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPen:Z

    if-nez v7, :cond_17

    .line 319
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPalm:Z

    if-eqz v7, :cond_18

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mWasPreviousEventCanceled:Z

    if-nez v7, :cond_18

    .line 320
    sget-object v7, Landroid/view/IEventFilter$ReturnAct;->CANCEL:Landroid/view/IEventFilter$ReturnAct;

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 321
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v7, v14}, Ljava/util/BitSet;->set(I)V

    .line 322
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mWasPreviousEventCanceled:Z

    .line 308
    :cond_17
    :goto_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 324
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPalm:Z

    if-eqz v7, :cond_19

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mWasPreviousEventCanceled:Z

    if-eqz v7, :cond_19

    .line 325
    sget-object v7, Landroid/view/IEventFilter$ReturnAct;->IGNORE:Landroid/view/IEventFilter$ReturnAct;

    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 327
    :cond_19
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v7, v14}, Ljava/util/BitSet;->set(I)V

    goto :goto_a

    .line 332
    .end local v3    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    .end local v14    # "id":I
    .end local v19    # "newResult":I
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mIsUsingPalm:Z

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    if-eq v10, v7, :cond_1b

    const/4 v7, 0x6

    if-ne v10, v7, :cond_10

    .line 333
    :cond_1b
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/view/PenRecognitionFilter;->mWasPreviousEventCanceled:Z

    goto/16 :goto_8
.end method

.method public getAct()Landroid/view/IEventFilter$ReturnAct;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    return-object v0
.end method

.method public getReportMask()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 199
    sget-object v2, Landroid/view/IEventFilter$ReturnAct;->NONE:Landroid/view/IEventFilter$ReturnAct;

    iput-object v2, p0, Landroid/view/PenRecognitionFilter;->mFilteredAct:Landroid/view/IEventFilter$ReturnAct;

    .line 200
    iget-object v2, p0, Landroid/view/PenRecognitionFilter;->reportIdBits:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 201
    iput-boolean v3, p0, Landroid/view/PenRecognitionFilter;->mNeedToRepeat:Z

    .line 202
    iput-boolean v3, p0, Landroid/view/PenRecognitionFilter;->mIsUsingPen:Z

    .line 203
    iput-boolean v3, p0, Landroid/view/PenRecognitionFilter;->mIsUsingPalm:Z

    .line 204
    iput-boolean v3, p0, Landroid/view/PenRecognitionFilter;->mUsingfinger:Z

    .line 205
    iput-boolean v3, p0, Landroid/view/PenRecognitionFilter;->mWasPreviousEventCanceled:Z

    .line 206
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/PenRecognitionFilter;->mSavedTopID:I

    .line 207
    iget-object v2, p0, Landroid/view/PenRecognitionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v2}, Landroid/view/RegionInfo;->getLeftEdgeRegion()I

    move-result v2

    iput v2, p0, Landroid/view/PenRecognitionFilter;->mValidXLeft:I

    .line 208
    iget-object v2, p0, Landroid/view/PenRecognitionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v2}, Landroid/view/RegionInfo;->getRightEdgeRegion()I

    move-result v2

    iput v2, p0, Landroid/view/PenRecognitionFilter;->mValidXRight:I

    .line 209
    iget-object v2, p0, Landroid/view/PenRecognitionFilter;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    .line 210
    iget-object v2, p0, Landroid/view/PenRecognitionFilter;->mPalmRegion:Landroid/view/PenRecognitionFilter$PalmRegion;

    invoke-virtual {v2}, Landroid/view/PenRecognitionFilter$PalmRegion;->init()V

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 212
    iget-object v2, p0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/PenRecognitionFilter$PenIDFinder;

    .line 213
    .local v1, "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    invoke-virtual {v1}, Landroid/view/PenRecognitionFilter$PenIDFinder;->init()V

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    :cond_0
    return-void
.end method

.method public needToRepeat()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Landroid/view/PenRecognitionFilter;->mNeedToRepeat:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v1, "msg":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PenRecognitionFilter mIsUsingPen["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/PenRecognitionFilter;->mIsUsingPen:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] valid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/PenRecognitionFilter;->mRegionInfo:Landroid/view/RegionInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    .line 371
    iget-object v3, p0, Landroid/view/PenRecognitionFilter;->mPenIDFinder:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PenRecognitionFilter$PenIDFinder;

    .line 372
    .local v2, "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    invoke-virtual {v2}, Landroid/view/PenRecognitionFilter$PenIDFinder;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "penFinder":Landroid/view/PenRecognitionFilter$PenIDFinder;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Rect - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/PenRecognitionFilter;->mPalmRegion:Landroid/view/PenRecognitionFilter$PalmRegion;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
