.class public Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;
.super Ljava/lang/Object;
.source "PanoramaViewRenderer.java"

# interfaces
.implements Lcom/lge/morpho/app/morphopanorama/GLTextureView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;,
        Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;,
        Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;
    }
.end annotation


# static fields
.field public static final MSG_FINISH_RENDER_PREVIEW:I = 0x0

.field public static final MSG_REQUEST_REREGISTER_TEXTURE:I = 0x2

.field public static final MSG_REQUEST_SET_POSTVIEW_DATA:I = 0x1

.field public static final PANORAMA_POSTVIEW:I = 0x1

.field public static final PANORAMA_PREVIEW:I


# instance fields
.field private isDefault:Z

.field private isFileSelect:Z

.field private isRegistered:Z

.field private mActivity:Landroid/app/Activity;

.field private mDispType:I

.field private mGyroscopeType:I

.field private mHandler:Landroid/os/Handler;

.field private mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

.field private mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

.field private mPrevTimestamp:J

.field private mPreviewMode:I

.field private mRenderEnable:Z

.field private mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

.field private mRenderInfoID:[I

.field private mRotation:I

.field private mScale:D

.field private mSyncObj:Ljava/lang/Object;

.field private mTouchSyncObj:Ljava/lang/Object;

.field private mViewHeight:I

.field private mViewWidth:I

.field private render_count:J

.field private x_rotate:D

.field private y_rotate:D


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "image_stitcher"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .param p4, "preview_buffer_size"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 39
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 40
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 42
    iput v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    .line 49
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 51
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 89
    iput v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    .line 90
    iput-object p3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 91
    iput-object p2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mHandler:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    .line 93
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    new-instance v1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    invoke-direct {v1, p0, p4}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;-><init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;I)V

    aput-object v1, v0, v2

    .line 94
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    new-instance v1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    invoke-direct {v1, p0, p4}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;-><init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;I)V

    aput-object v1, v0, v3

    .line 95
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    .line 96
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;Z)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "image_stitcher"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
    .param p4, "is_file_select"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 39
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 40
    iput-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 42
    iput v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    .line 49
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 51
    iput-boolean v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 100
    iput v3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    .line 101
    iput-object p3, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 102
    iput v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    .line 103
    iput-boolean p4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isFileSelect:Z

    .line 104
    iput-object p2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mHandler:Landroid/os/Handler;

    .line 105
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    .line 106
    return-void
.end method

.method private renderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;J)V
    .locals 22
    .param p1, "r_info"    # Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    .param p2, "pre_odf_end_time"    # J

    .prologue
    .line 295
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 296
    :try_start_0
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    if-nez v15, :cond_0

    .line 297
    monitor-exit v16

    .line 358
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    iput-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 301
    new-instance v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;-><init>(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;)V

    .line 302
    .local v10, "result":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 303
    .local v8, "now_time":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-eqz v15, :cond_1

    .line 304
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mFrameInterval:J

    .line 306
    :cond_1
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 307
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoEndTime:J

    move-wide/from16 v18, v0

    sub-long v18, v8, v18

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mRQRenderToOnDrawFrame:J

    .line 308
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mCount:J

    .line 309
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoTime:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mSetRenderInfoTime:J

    .line 311
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    if-eqz v15, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_mat:[D

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mGyroscopeType:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 314
    :cond_2
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z

    if-eqz v15, :cond_3

    .line 315
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->rv_mat:[D

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 317
    :cond_3
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_ac_mat:Z

    if-eqz v15, :cond_4

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->ac_mat:[D

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setAngleMatrix([DI)I

    .line 323
    :cond_4
    const/4 v15, 0x1

    new-array v6, v15, [I

    .line 324
    .local v6, "image_id":[I
    const/4 v15, 0x1

    new-array v11, v15, [I

    .line 325
    .local v11, "status":[I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 326
    .local v12, "s_time":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_image:I

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1, v6, v11}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->attach([BI[I[I)I

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 329
    .local v4, "e_time":J
    const/4 v15, 0x0

    aget v15, v6, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mImageID:I

    .line 330
    const/4 v15, 0x0

    aget v15, v11, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachStatus:I

    .line 331
    sub-long v18, v4, v12

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachTime:J

    .line 333
    const/4 v15, 0x1

    new-array v7, v15, [I

    .line 334
    .local v7, "is_stootable":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v15, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getIsShootable([I)I

    .line 335
    const/4 v15, 0x0

    aget v15, v7, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mIsStootable:I

    .line 337
    const/4 v15, 0x1

    new-array v14, v15, [I

    .line 338
    .local v14, "stop_thres":[I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v15, v14}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->getIsStop([I)I

    .line 339
    const/4 v15, 0x0

    aget v15, v14, v15

    const/16 v17, 0x46

    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    .line 340
    const/4 v15, 0x3

    new-array v15, v15, [F

    iput-object v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mGyroCorrectionValue:[F

    .line 341
    iget-object v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mGyroCorrectionValue:[F

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/lge/morpho/app/morphopanorama/FloatMathUtil;->getAverage([FLjava/util/ArrayList;)Z

    .line 343
    :cond_5
    const/4 v15, 0x0

    aget v15, v14, v15

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mStopThres:I

    .line 345
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 346
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->renderPreview([BIII)I

    .line 347
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 348
    sub-long v18, v4, v12

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mRenderTime:J

    .line 349
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    cmp-long v15, v18, v20

    if-lez v15, :cond_6

    .line 350
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoStartTime:J

    move-wide/from16 v18, v0

    sub-long v18, v18, p2

    move-wide/from16 v0, v18

    iput-wide v0, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mODFToOPF:J

    .line 352
    :cond_6
    move-object/from16 v0, p1

    iget v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->preview_id:I

    iput v15, v10, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mPreviewID:I

    .line 353
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    if-eqz v15, :cond_7

    .line 354
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    invoke-interface {v15, v10}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;->onRenderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;)V

    .line 356
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mOnDrawEndTime:J

    .line 357
    monitor-exit v16

    goto/16 :goto_0

    .end local v4    # "e_time":J
    .end local v6    # "image_id":[I
    .end local v7    # "is_stootable":[I
    .end local v8    # "now_time":J
    .end local v10    # "result":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;
    .end local v11    # "status":[I
    .end local v12    # "s_time":J
    .end local v14    # "stop_thres":[I
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15
.end method


# virtual methods
.method public getRenderEnable()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 258
    iget-object v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v8

    .line 259
    :try_start_0
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 260
    .local v2, "x_rot":D
    iget-wide v4, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 261
    .local v4, "y_rot":D
    iget-wide v6, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 262
    .local v6, "scale":D
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 263
    const-wide/16 v12, 0x0

    iput-wide v12, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 264
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    iget-object v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v11

    .line 266
    :try_start_1
    iget-boolean v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    if-nez v8, :cond_0

    .line 267
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 292
    :goto_0
    return-void

    .line 264
    .end local v2    # "x_rot":D
    .end local v4    # "y_rot":D
    .end local v6    # "scale":D
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 269
    .restart local v2    # "x_rot":D
    .restart local v4    # "y_rot":D
    .restart local v6    # "scale":D
    :cond_0
    :try_start_3
    iget v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    if-nez v8, :cond_4

    .line 270
    iget-object v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    invoke-virtual {v8}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v8

    if-nez v8, :cond_1

    .line 271
    monitor-exit v11

    goto :goto_0

    .line 290
    :catchall_1
    move-exception v1

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 275
    :cond_1
    :try_start_4
    iget-object v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    monitor-enter v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    :try_start_5
    iget-object v12, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-ne v12, v1, :cond_3

    .line 278
    .local v0, "id":I
    :goto_1
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    aget-object v10, v1, v0

    .line 279
    .local v10, "render_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    iget-object v12, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    aget-object v9, v1, v12

    .line 280
    .local v9, "pre_render_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 281
    :try_start_6
    iget-wide v12, v9, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mOnDrawEndTime:J

    invoke-direct {p0, v10, v12, v13}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->renderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;J)V

    .line 290
    .end local v0    # "id":I
    .end local v9    # "pre_render_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    .end local v10    # "render_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    :cond_2
    :goto_2
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 276
    goto :goto_1

    .line 280
    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    .line 282
    :cond_4
    iget v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    if-ne v8, v1, :cond_2

    .line 283
    iget-boolean v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    if-eqz v1, :cond_5

    .line 284
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    iget v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    invoke-virtual {v1, v8}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->renderPostviewDefault(I)I

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    goto :goto_2

    .line 287
    :cond_5
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    iget v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    invoke-virtual/range {v1 .. v8}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->renderPostview(DDDI)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 390
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090008

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v8

    .line 391
    .local v8, "disp_w":I
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f090009

    invoke-static {v0, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v7

    .line 393
    .local v7, "disp_h":I
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    iput v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    .line 395
    iput v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    .line 401
    :goto_0
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    iget v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    invoke-interface {p1, v10, v10, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 402
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    int-to-float v2, v0

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    int-to-float v4, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p1

    move v3, v1

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 403
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    iget v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    invoke-interface {p1, v10, v10, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 404
    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPreviewMode:I

    if-ne v0, v11, :cond_3

    .line 405
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    if-nez v0, :cond_0

    .line 407
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 408
    .local v9, "msg":Landroid/os/Message;
    iget-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isFileSelect:Z

    if-eqz v0, :cond_2

    .line 409
    iput v11, v9, Landroid/os/Message;->arg1:I

    .line 413
    :goto_1
    iget-object v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    iput-boolean v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 419
    .end local v9    # "msg":Landroid/os/Message;
    :cond_0
    :goto_2
    return-void

    .line 397
    :cond_1
    iput v7, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    .line 398
    iput v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    goto :goto_0

    .line 411
    .restart local v9    # "msg":Landroid/os/Message;
    :cond_2
    const/4 v0, 0x2

    iput v0, v9, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 417
    .end local v9    # "msg":Landroid/os/Message;
    :cond_3
    iput-boolean v11, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    goto :goto_2
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v0, 0x0

    .line 423
    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isRegistered:Z

    .line 424
    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 425
    return-void
.end method

.method public resetMesureInfo()V
    .locals 4

    .prologue
    .line 237
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->render_count:J

    .line 239
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mPrevTimestamp:J

    .line 240
    monitor-exit v1

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAngle(FF)V
    .locals 6
    .param p1, "distance_x"    # F
    .param p2, "distance_y"    # F

    .prologue
    .line 175
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_0
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewWidth:I

    int-to-float v0, v0

    div-float v0, p1, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 177
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    iget v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mViewHeight:I

    int-to-float v0, v0

    div-float v0, p2, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 178
    monitor-exit v1

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefault()V
    .locals 4

    .prologue
    .line 222
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 224
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 225
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->isDefault:Z

    .line 227
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDefaultScale(D)V
    .locals 3
    .param p1, "scale"    # D

    .prologue
    .line 195
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iput-wide p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDispType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iput p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mDispType:I

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInputGyroscopeType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mGyroscopeType:I

    .line 118
    return-void
.end method

.method public setOnRenderPreviewListener(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;)V
    .locals 0
    .param p1, "listner"    # Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mListner:Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;

    .line 114
    return-void
.end method

.method public setPreviewRotation(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 201
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    sparse-switch p1, :sswitch_data_0

    .line 218
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 219
    return-void

    .line 204
    :sswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    goto :goto_0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 207
    :sswitch_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    goto :goto_0

    .line 210
    :sswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I

    goto :goto_0

    .line 213
    :sswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRotation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setRenderEnable(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 244
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iput-boolean p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderEnable:Z

    .line 246
    monitor-exit v1

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRenderInfo([BLjava/util/ArrayList;[D[D[DII)V
    .locals 12
    .param p1, "input_img"    # [B
    .param p3, "gr_mat"    # [D
    .param p4, "rv_mat"    # [D
    .param p5, "ac_mat"    # [D
    .param p6, "use_image"    # I
    .param p7, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/ArrayList",
            "<[F>;[D[D[DII)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "gr_value_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    iget-object v8, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    monitor-enter v8

    .line 126
    :try_start_0
    iget-object v5, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfo:[Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;

    iget-object v9, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    aget-object v4, v5, v9

    .line 127
    .local v4, "r_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    iget-object v9, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mRenderInfoID:[I

    const/4 v11, 0x0

    aget v5, v5, v11

    const/4 v11, 0x1

    if-ne v5, v11, :cond_0

    const/4 v5, 0x0

    :goto_0
    aput v5, v9, v10

    .line 128
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v8, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 132
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 134
    .local v6, "s_time":J
    array-length v5, p1

    iget-object v9, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    array-length v9, v9

    if-eq v5, v9, :cond_1

    .line 135
    const-string v5, "CameraApp"

    const-string v9, "Not same size. so skip"

    invoke-static {v5, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 172
    :goto_1
    return-void

    .line 127
    .end local v6    # "s_time":J
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 128
    .end local v4    # "r_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 138
    .restart local v4    # "r_info":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;
    .restart local v6    # "s_time":J
    :cond_1
    const/4 v5, 0x0

    :try_start_3
    iget-object v9, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    const/4 v10, 0x0

    iget-object v11, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->image:[B

    array-length v11, v11

    invoke-static {p1, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 141
    if-eqz p2, :cond_2

    .line 142
    invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_value_list:Ljava/util/ArrayList;

    .line 144
    :cond_2
    if-eqz p3, :cond_3

    .line 145
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->gr_mat:[D

    const/4 v10, 0x0

    array-length v11, p3

    invoke-static {p3, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 146
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    .line 150
    :goto_2
    if-eqz p4, :cond_4

    .line 151
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->rv_mat:[D

    const/4 v10, 0x0

    move-object/from16 v0, p4

    array-length v11, v0

    move-object/from16 v0, p4

    invoke-static {v0, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 152
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z

    .line 156
    :goto_3
    if-eqz p5, :cond_5

    .line 157
    const/4 v5, 0x0

    iget-object v9, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->ac_mat:[D

    const/4 v10, 0x0

    move-object/from16 v0, p5

    array-length v11, v0

    move-object/from16 v0, p5

    invoke-static {v0, v5, v9, v10, v11}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 158
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_ac_mat:Z

    .line 162
    :goto_4
    move/from16 v0, p6

    iput v0, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_image:I

    .line 163
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->is_set:Z

    .line 164
    move/from16 v0, p7

    iput v0, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->preview_id:I

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 167
    .local v2, "e_time":J
    sub-long v10, v2, v6

    iput-wide v10, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoTime:J

    .line 168
    iput-wide v6, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoStartTime:J

    .line 169
    iput-wide v2, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->mSetRenderInfoEndTime:J

    .line 170
    monitor-exit v8

    goto :goto_1

    .end local v2    # "e_time":J
    .end local v6    # "s_time":J
    :catchall_1
    move-exception v5

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 148
    .restart local v6    # "s_time":J
    :cond_3
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_gr_mat:Z

    goto :goto_2

    .line 154
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_rv_mat:Z

    goto :goto_3

    .line 160
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$RenderInfo;->use_ac_mat:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method

.method public setScale(F)V
    .locals 10
    .param p1, "scale"    # F

    .prologue
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    const-wide v6, 0x3fe999999999999aL    # 0.8

    .line 182
    iget-object v1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mTouchSyncObj:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    float-to-double v4, p1

    mul-double/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 184
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    cmpl-double v0, v2, v8

    if-lez v0, :cond_1

    .line 185
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    .line 189
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->x_rotate:D

    .line 190
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->y_rotate:D

    .line 191
    monitor-exit v1

    .line 192
    return-void

    .line 186
    :cond_1
    iget-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    cmpg-double v0, v2, v6

    if-gez v0, :cond_0

    .line 187
    const-wide v2, 0x3fe999999999999aL    # 0.8

    iput-wide v2, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mScale:D

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setStitcher(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;)V
    .locals 0
    .param p1, "stitcher"    # Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->mMorphoImageStitcher:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    .line 110
    return-void
.end method
