.class Lcom/lge/camera/PostviewTimeMachineActivity$3;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->changeThumbnailImages(Landroid/graphics/drawable/BitmapDrawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

.field final synthetic val$bmpD:Landroid/graphics/drawable/BitmapDrawable;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iput p2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->val$index:I

    iput-object p3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->val$bmpD:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 506
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v3, p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 507
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const v4, 0x7f0d0174

    invoke-virtual {v3, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 508
    .local v1, "timeMachineGalleryImage":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 509
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->val$index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 511
    .local v0, "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    invoke-static {v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$900(Lcom/lge/camera/PostviewTimeMachineActivity;)Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->val$bmpD:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    invoke-static {v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$900(Lcom/lge/camera/PostviewTimeMachineActivity;)Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # getter for: Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    invoke-static {v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$900(Lcom/lge/camera/PostviewTimeMachineActivity;)Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setThumbBitmap(Landroid/graphics/drawable/BitmapDrawable;II)V

    .line 515
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity$3;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const v4, 0x7f0d0173

    invoke-virtual {v3, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 516
    .local v2, "timeMachineGalleryScroll":Landroid/view/View;
    check-cast v2, Landroid/widget/HorizontalScrollView;

    .end local v2    # "timeMachineGalleryScroll":Landroid/view/View;
    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    .line 520
    .end local v0    # "galleryThumb":Lcom/lge/camera/postview/GalleryThumbnailLayout;
    :cond_0
    return-void
.end method
