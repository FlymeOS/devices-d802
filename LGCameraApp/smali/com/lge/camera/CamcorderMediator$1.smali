.class Lcom/lge/camera/CamcorderMediator$1;
.super Ljava/lang/Object;
.source "CamcorderMediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/CamcorderMediator;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/CamcorderMediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/CamcorderMediator;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 213
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1, p0}, Lcom/lge/camera/CamcorderMediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    invoke-virtual {v1}, Lcom/lge/camera/CamcorderMediator;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v1, v1, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->getPostviewRequestCode()I

    move-result v0

    .line 218
    .local v0, "requestCode":I
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v1, v1, Lcom/lge/camera/CamcorderMediator;->mActivity:Lcom/lge/camera/Mediator$ActivityBridge;

    invoke-interface {v1}, Lcom/lge/camera/Mediator$ActivityBridge;->setPostviewRequestInitCode()V

    .line 219
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 221
    :pswitch_0
    iget-object v1, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    iget-object v2, p0, Lcom/lge/camera/CamcorderMediator$1;->this$0:Lcom/lge/camera/CamcorderMediator;

    const v3, 0x7f0a0185

    invoke-virtual {v2, v3}, Lcom/lge/camera/CamcorderMediator;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/CamcorderMediator;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
