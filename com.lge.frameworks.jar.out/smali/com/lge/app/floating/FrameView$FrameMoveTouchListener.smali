.class Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;
.super Ljava/lang/Object;
.source "FrameView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/floating/FrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameMoveTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/floating/FrameView;


# direct methods
.method private constructor <init>(Lcom/lge/app/floating/FrameView;)V
    .locals 0

    .prologue
    .line 609
    iput-object p1, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/app/floating/FrameView;Lcom/lge/app/floating/FrameView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/app/floating/FrameView;
    .param p2, "x1"    # Lcom/lge/app/floating/FrameView$1;

    .prologue
    .line 609
    invoke-direct {p0, p1}, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;-><init>(Lcom/lge/app/floating/FrameView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 612
    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v0}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->useDoubleTapMinimize:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    invoke-virtual {v0}, Lcom/lge/app/floating/FrameView;->getWindow()Lcom/lge/app/floating/FloatingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/app/floating/FloatingWindow;->getLayoutParam()Lcom/lge/app/floating/FloatingWindow$LayoutParams;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lge/app/floating/FloatingWindow$LayoutParams;->hideTitle:Z

    if-eqz v0, :cond_1

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/lge/app/floating/FrameView$FrameMoveTouchListener;->this$0:Lcom/lge/app/floating/FrameView;

    # getter for: Lcom/lge/app/floating/FrameView;->mDefaultTouchListener:Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;
    invoke-static {v0}, Lcom/lge/app/floating/FrameView;->access$400(Lcom/lge/app/floating/FrameView;)Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/app/floating/FloatingWindow$DefaultTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 615
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
