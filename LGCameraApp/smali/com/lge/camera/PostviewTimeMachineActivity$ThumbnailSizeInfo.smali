.class Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailSizeInfo"
.end annotation


# instance fields
.field private mLeftMargin:I

.field private mThumbHeight:I

.field private mThumbWidth:I

.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;


# direct methods
.method private constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 374
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbWidth:I

    .line 376
    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbHeight:I

    .line 377
    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;Lcom/lge/camera/PostviewTimeMachineActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/PostviewTimeMachineActivity;
    .param p2, "x1"    # Lcom/lge/camera/PostviewTimeMachineActivity$1;

    .prologue
    .line 374
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    return-void
.end method


# virtual methods
.method public getLeftMargin()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    return v0
.end method

.method public getThumbHeight()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbHeight:I

    return v0
.end method

.method public getThumbWidth()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbWidth:I

    return v0
.end method

.method public setThumbnailSizeInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 380
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v3, v3, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v3, v3, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-nez v3, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    const/4 v0, 0x0

    .line 385
    .local v0, "galleryWidth":I
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v3, v3, Lcom/lge/camera/PostviewTimeMachineActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 387
    .local v1, "imageListSize":I
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;
    invoke-static {v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$200(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 389
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v3, v3, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget-object v3, v3, Lcom/lge/camera/PostviewTimeMachineActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 391
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$200(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 392
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v3, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->getThumbnailSize(Z)[I

    move-result-object v3

    aget v3, v3, v2

    iput v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbWidth:I

    .line 393
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v3, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->getThumbnailSize(Z)[I

    move-result-object v3

    aget v3, v3, v5

    iput v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbHeight:I

    .line 399
    :goto_1
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbWidth:I

    mul-int/2addr v3, v1

    sub-int v3, v0, v3

    add-int/lit8 v4, v1, 0x1

    div-int/2addr v3, v4

    iput v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    .line 400
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    if-lez v3, :cond_3

    iget v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    :cond_3
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    .line 401
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moo  mLeftMargin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mLeftMargin:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 395
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;
    invoke-static {v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$200(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 396
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v3, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->getThumbnailSize(Z)[I

    move-result-object v3

    aget v3, v3, v2

    iput v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbWidth:I

    .line 397
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v3, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->getThumbnailSize(Z)[I

    move-result-object v3

    aget v3, v3, v5

    iput v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->mThumbHeight:I

    goto :goto_1
.end method
