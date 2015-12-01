.class Lcom/lge/camera/controller/PreviewPanelController$1;
.super Ljava/lang/Thread;
.source "PreviewPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->getThumbnailAndUpdateButton(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;

.field final synthetic val$inclusion:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;I)V
    .locals 0

    .prologue
    .line 946
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput p2, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->val$inclusion:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 948
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v5, 0x0

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v5}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 950
    const/4 v2, 0x0

    .line 951
    .local v2, "strUri":Ljava/lang/String;
    const/4 v1, 0x0

    .line 952
    .local v1, "savedPath":Ljava/lang/String;
    const/4 v0, 0x0

    .line 954
    .local v0, "pathFromUri":Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 958
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 962
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastPictureUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 963
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastPicturePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 970
    :goto_1
    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 971
    const/4 v2, 0x0

    .line 972
    const/4 v1, 0x0

    .line 980
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$1;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 981
    const-string v4, "CameraApp"

    const-string v5, "mThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 966
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 967
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 974
    :cond_4
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 976
    const/4 v2, 0x0

    .line 977
    const/4 v1, 0x0

    goto :goto_2

    .line 984
    :cond_5
    const-string v4, "CameraApp"

    const-string v5, "Last uri:%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    if-eqz v2, :cond_7

    .line 987
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/BitmapManager;->getRealPathFromURI(Landroid/app/Activity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 990
    :cond_6
    const-string v4, "CameraApp"

    const-string v5, "Saved uri is not valid. Find most recent uri."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const/4 v2, 0x0

    .line 995
    :cond_7
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$1;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 996
    const-string v4, "CameraApp"

    const-string v5, "mThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 999
    :cond_8
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbnailLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$100(Lcom/lge/camera/controller/PreviewPanelController;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 1000
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewPanelController;->checkMediator()Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->checkActivity()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1001
    :cond_9
    monitor-exit v5

    goto/16 :goto_0

    .line 1022
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1004
    :cond_a
    const/4 v3, 0x0

    .line 1005
    .local v3, "temp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_d

    .line 1006
    :try_start_1
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v7, 0x1

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->val$inclusion:I

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v6

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1007
    const-string v4, "CameraApp"

    const-string v6, "Found most recent uri:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v9}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1018
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1019
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1021
    :cond_c
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4, v3}, Lcom/lge/camera/controller/PreviewPanelController;->access$202(Lcom/lge/camera/controller/PreviewPanelController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1022
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewPanelController$1;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1024
    const-string v4, "CameraApp"

    const-string v5, "mThumbnailThread is isInterrupted()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1010
    :cond_d
    :try_start_2
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1011
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1012
    if-nez v3, :cond_b

    .line 1013
    const-string v4, "CameraApp"

    const-string v6, "Couldn\'t get thumbnail from Last uri"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v7, 0x1

    iget v8, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->val$inclusion:I

    invoke-virtual {v6, v7, v8}, Lcom/lge/camera/controller/PreviewPanelController;->getMostRecentThumbnailUri(ZI)Landroid/net/Uri;

    move-result-object v6

    # setter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v4, v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$002(Lcom/lge/camera/controller/PreviewPanelController;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1015
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v4, v4, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v6, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/lge/camera/controller/PreviewPanelController;->access$000(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/lge/camera/ControllerFunction;->getLastThumbnail(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    goto :goto_3

    .line 1027
    :cond_e
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # getter for: Lcom/lge/camera/controller/PreviewPanelController;->mThumbImage:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/lge/camera/controller/PreviewPanelController;->access$200(Lcom/lge/camera/controller/PreviewPanelController;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_f

    .line 1028
    const-string v4, "CameraApp"

    const-string v5, "Couldn\'t get any thumbnail. Leave it empty."

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_f
    iget-object v4, p0, Lcom/lge/camera/controller/PreviewPanelController$1;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-virtual {v4}, Lcom/lge/camera/controller/PreviewPanelController;->updateThumbnailButton()V

    goto/16 :goto_0
.end method
