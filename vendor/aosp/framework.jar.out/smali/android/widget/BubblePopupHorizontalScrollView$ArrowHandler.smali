.class Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
.super Landroid/os/Handler;
.source "BubblePopupHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BubblePopupHorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/BubblePopupHorizontalScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/BubblePopupHorizontalScrollView;Landroid/widget/BubblePopupHorizontalScrollView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/BubblePopupHorizontalScrollView;
    .param p2, "x1"    # Landroid/widget/BubblePopupHorizontalScrollView$1;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;-><init>(Landroid/widget/BubblePopupHorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 48
    :pswitch_0
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z
    invoke-static {v1, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$002(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    .line 49
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->drawArrow()V

    .line 50
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->removeMessages(I)V

    .line 51
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mSkipCheckArrow:Z
    invoke-static {v1, v2}, Landroid/widget/BubblePopupHorizontalScrollView;->access$002(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    .line 55
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$200(Landroid/widget/BubblePopupHorizontalScrollView;)Z

    move-result v1

    if-ne v1, v2, :cond_1

    .line 56
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # invokes: Landroid/widget/BubblePopupHorizontalScrollView;->hideLeftArrow()V
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$300(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 57
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldLeftVisible:Z
    invoke-static {v1, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$202(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    .line 59
    :cond_1
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$400(Landroid/widget/BubblePopupHorizontalScrollView;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # invokes: Landroid/widget/BubblePopupHorizontalScrollView;->hideRightArrow()V
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$500(Landroid/widget/BubblePopupHorizontalScrollView;)V

    .line 61
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # setter for: Landroid/widget/BubblePopupHorizontalScrollView;->mOldRightVisible:Z
    invoke-static {v1, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->access$402(Landroid/widget/BubblePopupHorizontalScrollView;Z)Z

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$600(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$600(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    .line 67
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    iget-object v2, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mScroller2:Landroid/widget/OverScroller;
    invoke-static {v2}, Landroid/widget/BubblePopupHorizontalScrollView;->access$600(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/BubblePopupHorizontalScrollView;->scrollTo(II)V

    .line 68
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    invoke-virtual {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->invalidate()V

    .line 69
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 70
    .local v0, "updateMsg":Landroid/os/Message;
    iget-object v1, p0, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->this$0:Landroid/widget/BubblePopupHorizontalScrollView;

    # getter for: Landroid/widget/BubblePopupHorizontalScrollView;->mHandler:Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;
    invoke-static {v1}, Landroid/widget/BubblePopupHorizontalScrollView;->access$100(Landroid/widget/BubblePopupHorizontalScrollView;)Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/BubblePopupHorizontalScrollView$ArrowHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
