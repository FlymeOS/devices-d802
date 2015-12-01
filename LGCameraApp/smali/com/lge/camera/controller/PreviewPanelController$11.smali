.class Lcom/lge/camera/controller/PreviewPanelController$11;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->setGalleryWindowImage(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 2676
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2678
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_1

    .line 2731
    :cond_0
    :goto_0
    return-void

    .line 2682
    :cond_1
    const/4 v6, 0x0

    .line 2683
    .local v6, "tempBmp":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 2684
    .local v5, "resizeFullBmp":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, "imageWidth":I
    const/4 v3, 0x0

    .line 2685
    .local v3, "imageHeight":I
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 2687
    .local v1, "dstSize":[I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Current uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mThumbUri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_4

    .line 2689
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/ExifUtil;->getExifWidth(Ljava/lang/String;)I

    move-result v4

    .line 2691
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/ExifUtil;->getExifHeight(Ljava/lang/String;)I

    move-result v3

    .line 2693
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object v1

    .line 2695
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    aget v9, v1, v11

    aget v10, v1, v10

    invoke-static {v7, v8, v9, v10}, Lcom/lge/camera/util/ImageManager;->loadScaledBitmap(Landroid/content/ContentResolver;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2709
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mGalleryWindowAniState:I
    invoke-static {v7}, Lcom/lge/camera/controller/PreviewPanelController;->access$1100(Lcom/lge/camera/controller/PreviewPanelController;)I

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_5

    .line 2713
    :cond_3
    const-string v7, "CameraApp"

    const-string v8, "LoadBitmap fail!"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2698
    :cond_4
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2699
    if-eqz v6, :cond_2

    .line 2700
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2701
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 2702
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v4, v3}, Lcom/lge/camera/util/Util;->getFitSizeOfBitmapForLCD(Landroid/app/Activity;II)[I

    move-result-object v1

    .line 2704
    aget v7, v1, v11

    aget v8, v1, v10

    invoke-static {v6, v7, v8, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 2717
    :cond_5
    move-object v2, v5

    .line 2718
    .local v2, "imageBmp":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->val$uri:Landroid/net/Uri;

    invoke-static {v7, v8}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v0

    .line 2720
    .local v0, "degree":I
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewPanelController$11;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v7, v7, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v8, Lcom/lge/camera/controller/PreviewPanelController$11$1;

    invoke-direct {v8, p0, v2, v0}, Lcom/lge/camera/controller/PreviewPanelController$11$1;-><init>(Lcom/lge/camera/controller/PreviewPanelController$11;Landroid/graphics/Bitmap;I)V

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
