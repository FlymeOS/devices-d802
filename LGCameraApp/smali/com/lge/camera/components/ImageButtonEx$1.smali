.class Lcom/lge/camera/components/ImageButtonEx$1;
.super Ljava/util/TimerTask;
.source "ImageButtonEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ImageButtonEx;->doTouchActionDown(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ImageButtonEx;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ImageButtonEx;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 169
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    # getter for: Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I
    invoke-static {v0}, Lcom/lge/camera/components/ImageButtonEx;->access$000(Lcom/lge/camera/components/ImageButtonEx;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    # setter for: Lcom/lge/camera/components/ImageButtonEx;->mButtonStatus:I
    invoke-static {v0, v1}, Lcom/lge/camera/components/ImageButtonEx;->access$002(Lcom/lge/camera/components/ImageButtonEx;I)I

    .line 173
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    # getter for: Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    invoke-static {v0}, Lcom/lge/camera/components/ImageButtonEx;->access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    # getter for: Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    invoke-static {v0}, Lcom/lge/camera/components/ImageButtonEx;->access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    goto :goto_0

    .line 179
    :pswitch_1
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    # getter for: Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    invoke-static {v0}, Lcom/lge/camera/components/ImageButtonEx;->access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/lge/camera/components/ImageButtonEx$1;->this$0:Lcom/lge/camera/components/ImageButtonEx;

    # getter for: Lcom/lge/camera/components/ImageButtonEx;->mButtonStateListener:Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;
    invoke-static {v0}, Lcom/lge/camera/components/ImageButtonEx;->access$100(Lcom/lge/camera/components/ImageButtonEx;)Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ImageButtonEx$ImageButtonExStateListener;->onChange(I)V

    goto :goto_0

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
