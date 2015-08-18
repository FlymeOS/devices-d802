.class Lcom/lge/dockservice/DockWindowService$1$4;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->handleDockTouchEvent(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$4;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$token:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$event:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 348
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$4;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v2, v2, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 349
    .local v1, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    if-nez v1, :cond_0

    .line 350
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TargetView for packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exists. Do not handle toucheEvent."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 355
    :cond_0
    # setter for: Lcom/lge/dockservice/DockWindowService$DockView;->mHasTouchDownConfirmed:Z
    invoke-static {v1, v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$702(Lcom/lge/dockservice/DockWindowService$DockView;Z)Z

    .line 357
    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v2

    if-eq v2, v5, :cond_1

    .line 358
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "state changed to DOCK"

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    # setter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$802(Lcom/lge/dockservice/DockWindowService$DockView;I)I

    .line 361
    :try_start_0
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$token:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mState:I
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$800(Lcom/lge/dockservice/DockWindowService$DockView;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/dockservice/IBaseDockWindow;->updateDockState(I)V

    .line 362
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/lge/dockservice/DockWindowService$DockView;->access$900(Lcom/lge/dockservice/DockWindowService$DockView;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1$4;->val$event:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Lcom/lge/dockservice/DockWindowService$DockView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
