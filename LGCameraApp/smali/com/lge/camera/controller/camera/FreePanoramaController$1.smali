.class Lcom/lge/camera/controller/camera/FreePanoramaController$1;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$onRenderPreviewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;->initEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController;)V
    .locals 0

    .prologue
    .line 244
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderPreview(Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;)V
    .locals 5
    .param p1, "result_info"    # Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mPreviewCallback:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$000(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;

    move-result-object v1

    iget v2, p1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachStatus:I

    invoke-virtual {v1, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setStatus(I)V

    .line 249
    iget v1, p1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mImageID:I

    if-ltz v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$100(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->playFreePanoramaShutterSound()V

    .line 256
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 257
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 258
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$300(Lcom/lge/camera/controller/camera/FreePanoramaController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void

    .line 251
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget v1, p1, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mImageID:I

    if-lt v1, v4, :cond_0

    .line 252
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-virtual {v1, v3}, Lcom/lge/camera/controller/camera/FreePanoramaController;->setVisibleTakingGuide(Z)V

    .line 253
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$1;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->showGuideText(Z)V
    invoke-static {v1, v4}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$200(Lcom/lge/camera/controller/camera/FreePanoramaController;Z)V

    goto :goto_0
.end method
