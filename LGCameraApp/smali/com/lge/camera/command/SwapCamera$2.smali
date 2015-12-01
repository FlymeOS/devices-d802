.class Lcom/lge/camera/command/SwapCamera$2;
.super Ljava/lang/Object;
.source "SwapCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/SwapCamera;->preExecuteSwapCamera()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/SwapCamera;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/SwapCamera;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/lge/camera/command/SwapCamera$2;->this$0:Lcom/lge/camera/command/SwapCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 312
    iget-object v2, p0, Lcom/lge/camera/command/SwapCamera$2;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v2, v2, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 313
    const/4 v4, 0x1

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 314
    .local v8, "event":Landroid/view/MotionEvent;
    iget-object v0, p0, Lcom/lge/camera/command/SwapCamera$2;->this$0:Lcom/lge/camera/command/SwapCamera;

    iget-object v0, v0, Lcom/lge/camera/command/SwapCamera;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 315
    return-void
.end method
