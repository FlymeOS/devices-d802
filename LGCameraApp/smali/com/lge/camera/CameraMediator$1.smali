.class Lcom/lge/camera/CameraMediator$1;
.super Ljava/lang/Object;
.source "CameraMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CameraMediator;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CameraMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CameraMediator;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 290
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CameraMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 291
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CameraMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    .line 295
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v1, v1, Lcom/lge/camera/CameraMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 296
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v2, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0a0185

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :pswitch_2
    iget-object v1, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    iget-object v2, p0, Lcom/lge/camera/CameraMediator$1;->this$0:Lcom/lge/camera/CameraMediator;

    const v3, 0x7f0a02e9

    invoke-virtual {v2, v3}, Lcom/lge/camera/CameraMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CameraMediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
