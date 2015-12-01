.class Lcom/lge/camera/controller/camera/FreePanoramaController$5;
.super Landroid/os/Handler;
.source "FreePanoramaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController;
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
    .line 1120
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$5;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1123
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1126
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$5;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$3600(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1130
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$5;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v1}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$3700(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v1

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1134
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1135
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;

    .line 1136
    .local v0, "result":Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;
    iget-object v1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$5;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    iget v2, v0, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer$ResultInfo;->mAttachStatus:I

    # invokes: Lcom/lge/camera/controller/camera/FreePanoramaController;->moveToNextStateByAttachStatus(I)Z
    invoke-static {v1, v2}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$3800(Lcom/lge/camera/controller/camera/FreePanoramaController;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1123
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
