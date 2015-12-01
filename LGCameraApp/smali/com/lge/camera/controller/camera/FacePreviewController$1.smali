.class Lcom/lge/camera/controller/camera/FacePreviewController$1;
.super Ljava/lang/Object;
.source "FacePreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/FacePreviewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FacePreviewController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FacePreviewController;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 421
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$000(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRectByFocusing:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$000(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$100(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mPreviousFaceRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$100(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$200(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mSumOfFacePoint:Landroid/graphics/Point;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$200(Lcom/lge/camera/controller/camera/FacePreviewController;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Point;->set(II)V

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # setter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I
    invoke-static {v0, v3}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$302(Lcom/lge/camera/controller/camera/FacePreviewController;I)I

    .line 431
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$400(Lcom/lge/camera/controller/camera/FacePreviewController;)Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectView:Lcom/lge/camera/components/CameraPreview;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$400(Lcom/lge/camera/controller/camera/FacePreviewController;)Lcom/lge/camera/components/CameraPreview;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mDetectedFaces:[Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$500(Lcom/lge/camera/controller/camera/FacePreviewController;)[Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # getter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mFaceDetectedCount:I
    invoke-static {v2}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$300(Lcom/lge/camera/controller/camera/FacePreviewController;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/CameraPreview;->setFaceRectangles([Landroid/graphics/Rect;I)V

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FacePreviewController$1;->this$0:Lcom/lge/camera/controller/camera/FacePreviewController;

    # setter for: Lcom/lge/camera/controller/camera/FacePreviewController;->mIsReadyToInitilaizeFaceRect:Z
    invoke-static {v0, v3}, Lcom/lge/camera/controller/camera/FacePreviewController;->access$602(Lcom/lge/camera/controller/camera/FacePreviewController;Z)Z

    .line 435
    return-void
.end method
