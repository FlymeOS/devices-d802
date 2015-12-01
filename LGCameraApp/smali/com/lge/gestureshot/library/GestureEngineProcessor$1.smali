.class Lcom/lge/gestureshot/library/GestureEngineProcessor$1;
.super Landroid/os/Handler;
.source "GestureEngineProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gestureshot/library/GestureEngineProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;


# direct methods
.method constructor <init>(Lcom/lge/gestureshot/library/GestureEngineProcessor;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 67
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;
    invoke-static {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;
    invoke-static {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;->onGestureEngineResultCallback(ILcom/lge/gestureshot/library/HandInfo;)V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mHandInfo:Lcom/lge/gestureshot/library/HandInfo;
    invoke-static {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$100(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/HandInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 79
    :pswitch_2
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;
    invoke-static {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1, v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;->onGestureEngineResultCallback(ILcom/lge/gestureshot/library/HandInfo;)V

    goto :goto_0

    .line 83
    :pswitch_3
    iget-object v0, p0, Lcom/lge/gestureshot/library/GestureEngineProcessor$1;->this$0:Lcom/lge/gestureshot/library/GestureEngineProcessor;

    # getter for: Lcom/lge/gestureshot/library/GestureEngineProcessor;->mCallback:Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;
    invoke-static {v0}, Lcom/lge/gestureshot/library/GestureEngineProcessor;->access$000(Lcom/lge/gestureshot/library/GestureEngineProcessor;)Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1, v2}, Lcom/lge/gestureshot/library/GestureEngineProcessor$Callback;->onGestureEngineResultCallback(ILcom/lge/gestureshot/library/HandInfo;)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
