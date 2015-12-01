.class Lcom/lge/camera/command/ShowGallery$1;
.super Ljava/lang/Thread;
.source "ShowGallery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ShowGallery;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/ShowGallery;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowGallery;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 74
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v4, v4, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    .line 76
    .local v0, "firstInclusion":I
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v4, v4, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-nez v4, :cond_3

    move v1, v3

    .line 79
    .local v1, "secondInclusion":I
    :goto_1
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v3, v3, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v4, v4, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2, v0}, Lcom/lge/camera/ControllerFunction;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v4

    # setter for: Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;
    invoke-static {v3, v4}, Lcom/lge/camera/command/ShowGallery;->access$002(Lcom/lge/camera/command/ShowGallery;Landroid/net/Uri;)Landroid/net/Uri;

    .line 81
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    # getter for: Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/lge/camera/command/ShowGallery;->access$000(Lcom/lge/camera/command/ShowGallery;)Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v4, v4, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v2, v1}, Lcom/lge/camera/ControllerFunction;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;
    invoke-static {v3, v2}, Lcom/lge/camera/command/ShowGallery;->access$002(Lcom/lge/camera/command/ShowGallery;Landroid/net/Uri;)Landroid/net/Uri;

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v3, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v3, v3, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    # getter for: Lcom/lge/camera/command/ShowGallery;->mThumbnailUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/lge/camera/command/ShowGallery;->access$000(Lcom/lge/camera/command/ShowGallery;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/lge/camera/command/ShowGallery;->mUriPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lge/camera/command/ShowGallery;->access$102(Lcom/lge/camera/command/ShowGallery;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v2, v2, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/command/ShowGallery$1$1;

    invoke-direct {v3, p0}, Lcom/lge/camera/command/ShowGallery$1$1;-><init>(Lcom/lge/camera/command/ShowGallery$1;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    const/4 v3, 0x0

    # setter for: Lcom/lge/camera/command/ShowGallery;->mCheckingLastThumbnail:Z
    invoke-static {v2, v3}, Lcom/lge/camera/command/ShowGallery;->access$302(Lcom/lge/camera/command/ShowGallery;Z)Z

    .line 96
    return-void

    .end local v0    # "firstInclusion":I
    .end local v1    # "secondInclusion":I
    :cond_2
    move v0, v3

    .line 74
    goto :goto_0

    .restart local v0    # "firstInclusion":I
    :cond_3
    move v1, v2

    .line 76
    goto :goto_1
.end method
