.class Lcom/lge/camera/PostviewRefocusActivity$1;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity;->makeFrameList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewRefocusActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 397
    const-string v6, "CameraApp"

    const-string v7, "mMakeFramesThread-start"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mSelectedIndex:I
    invoke-static {v6, v8}, Lcom/lge/camera/PostviewRefocusActivity;->access$002(Lcom/lge/camera/PostviewRefocusActivity;I)I

    .line 400
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I
    invoke-static {v6, v8}, Lcom/lge/camera/PostviewRefocusActivity;->access$102(Lcom/lge/camera/PostviewRefocusActivity;I)I

    .line 402
    new-array v2, v9, [I

    .line 403
    .local v2, "dstSize":[I
    const/4 v4, 0x0

    .line 404
    .local v4, "imageUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 406
    .local v1, "bmpD":Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$200(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v6

    if-gt v3, v6, :cond_4

    .line 407
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$300(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$300(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 455
    :cond_0
    :goto_1
    return-void

    .line 413
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v6, v6, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "imageUri":Landroid/net/Uri;
    check-cast v4, Landroid/net/Uri;

    .line 414
    .restart local v4    # "imageUri":Landroid/net/Uri;
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->makeDrawableFrame([ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6, v2, v4}, Lcom/lge/camera/PostviewRefocusActivity;->access$400(Lcom/lge/camera/PostviewRefocusActivity;[ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 415
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$500(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 416
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mFrameList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$500(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 417
    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mAnimationState:I
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$600(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v6

    if-ne v6, v9, :cond_3

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMaxFrameIndex:I
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$200(Lcom/lge/camera/PostviewRefocusActivity;)I

    move-result v6

    if-ne v3, v6, :cond_3

    .line 418
    :cond_2
    move v5, v3

    .line 419
    .local v5, "refreshIdx":I
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    new-instance v7, Lcom/lge/camera/PostviewRefocusActivity$1$1;

    invoke-direct {v7, p0, v5}, Lcom/lge/camera/PostviewRefocusActivity$1$1;-><init>(Lcom/lge/camera/PostviewRefocusActivity$1;I)V

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewRefocusActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    .end local v5    # "refreshIdx":I
    :cond_3
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # operator++ for: Lcom/lge/camera/PostviewRefocusActivity;->mCurMakingImageIndex:I
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$108(Lcom/lge/camera/PostviewRefocusActivity;)I

    .line 406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    :cond_4
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$300(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Thread;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mMakeFramesThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$300(Lcom/lge/camera/PostviewRefocusActivity;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-nez v6, :cond_0

    .line 435
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewRefocusActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v7, v7, Lcom/lge/camera/PostviewRefocusActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "allinfocusImagePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget-object v7, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->makeDrawableFrame([ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v7, v2, v8}, Lcom/lge/camera/PostviewRefocusActivity;->access$400(Lcom/lge/camera/PostviewRefocusActivity;[ILandroid/net/Uri;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mAllinFocusImage:Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v6, v7}, Lcom/lge/camera/PostviewRefocusActivity;->access$802(Lcom/lge/camera/PostviewRefocusActivity;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 438
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->makeDepthMapInfo()V
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$900(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 439
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->setImageSizeInfo()V
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$1000(Lcom/lge/camera/PostviewRefocusActivity;)V

    .line 440
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    const/4 v7, 0x1

    # setter for: Lcom/lge/camera/PostviewRefocusActivity;->mLoadCompleted:Z
    invoke-static {v6, v7}, Lcom/lge/camera/PostviewRefocusActivity;->access$1102(Lcom/lge/camera/PostviewRefocusActivity;Z)Z

    .line 441
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    # getter for: Lcom/lge/camera/PostviewRefocusActivity;->mUseEnteringAnimation:Z
    invoke-static {v6}, Lcom/lge/camera/PostviewRefocusActivity;->access$1200(Lcom/lge/camera/PostviewRefocusActivity;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 442
    iget-object v6, p0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    new-instance v7, Lcom/lge/camera/PostviewRefocusActivity$1$2;

    invoke-direct {v7, p0}, Lcom/lge/camera/PostviewRefocusActivity$1$2;-><init>(Lcom/lge/camera/PostviewRefocusActivity$1;)V

    invoke-virtual {v6, v7}, Lcom/lge/camera/PostviewRefocusActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
