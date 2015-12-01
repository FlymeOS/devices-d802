.class final Lcom/lge/gestureshot/library/GestureEngine$1;
.super Landroid/os/Handler;
.source "GestureEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/gestureshot/library/GestureEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lge/gestureshot/library/HandInfo;

    .line 52
    .local v1, "handInfo":Lcom/lge/gestureshot/library/HandInfo;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 78
    :cond_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    # getter for: Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;

    .line 59
    .local v0, "gestureCallBack":Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;
    invoke-interface {v0, v1}, Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;->onGestureEngineDrawCallback(Lcom/lge/gestureshot/library/HandInfo;)V

    goto :goto_0

    .line 63
    .end local v0    # "gestureCallBack":Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_2
    # getter for: Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;

    .line 65
    .restart local v0    # "gestureCallBack":Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;->onGestureEngineEventCallback(I)V

    goto :goto_1

    .line 70
    .end local v0    # "gestureCallBack":Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;
    .end local v2    # "i$":Ljava/util/Iterator;
    :pswitch_3
    # getter for: Lcom/lge/gestureshot/library/GestureEngine;->sGestureCallBackList:Ljava/util/List;
    invoke-static {}, Lcom/lge/gestureshot/library/GestureEngine;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;

    .line 72
    .restart local v0    # "gestureCallBack":Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/lge/gestureshot/library/GestureEngine$GestureCallBack;->onGestureEngineEventCallback(I)V

    goto :goto_2

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
