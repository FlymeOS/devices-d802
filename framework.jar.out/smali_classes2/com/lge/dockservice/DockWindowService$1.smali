.class Lcom/lge/dockservice/DockWindowService$1;
.super Lcom/lge/dockservice/IDockWindowService$Stub;
.source "DockWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/dockservice/DockWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/dockservice/DockWindowService;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    invoke-direct {p0}, Lcom/lge/dockservice/IDockWindowService$Stub;-><init>()V

    return-void
.end method

.method private initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZZ)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "initPointX"    # I
    .param p5, "initPointY"    # I
    .param p6, "initToShow"    # Z
    .param p7, "fromHandleTouch"    # Z

    .prologue
    .line 374
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initDockWindow. ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ) initToShow : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fromHandleTouch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$400(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;

    move-result-object v10

    new-instance v1, Lcom/lge/dockservice/DockWindowService$1$5;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/lge/dockservice/DockWindowService$1$5;-><init>(Lcom/lge/dockservice/DockWindowService$1;Landroid/os/IBinder;Ljava/lang/String;Landroid/graphics/Bitmap;IIZZ)V

    invoke-virtual {v10, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    return-void
.end method


# virtual methods
.method public getDockPosition(Ljava/lang/String;)[I
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 303
    iget-object v2, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 304
    .local v1, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 305
    .local v0, "pos":[I
    if-eqz v1, :cond_0

    .line 306
    iget v2, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosX:I

    aput v2, v0, v5

    .line 307
    iget v2, v1, Lcom/lge/dockservice/DockWindowService$DockView;->mCurrentDockPosY:I

    aput v2, v0, v6

    .line 308
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDockPosition : ( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ) about packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-object v0

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleDockTouchEvent(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "event"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 339
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDockTouchEvent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/lge/dockservice/DockWindowService$1;->initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZZ)V

    .line 345
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService;->access$400(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/dockservice/DockWindowService$1$4;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/lge/dockservice/DockWindowService$1$4;-><init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;Landroid/os/IBinder;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 371
    return-void
.end method

.method public initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZ)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "initPointX"    # I
    .param p5, "initPointY"    # I
    .param p6, "initToShow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 423
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/dockservice/DockWindowService$1;->initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZZ)V

    .line 424
    return-void
.end method

.method public killdockIfExists(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "killdock If Exists about "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/dockservice/DockWindowService$DockView;

    .line 280
    .local v2, "targetView":Lcom/lge/dockservice/DockWindowService$DockView;
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v3}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 281
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;>;"
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "----- Current DockViewList -----"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/lge/dockservice/DockWindowService$DockView;>;"
    :cond_0
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "----- End Current DockViewList -----"

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    if-eqz v2, :cond_1

    .line 288
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "kill dockview for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/lge/dockservice/DockWindowService$DockView;->mPackageName:Ljava/lang/String;
    invoke-static {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->access$500(Lcom/lge/dockservice/DockWindowService$DockView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v2}, Lcom/lge/dockservice/DockWindowService$DockView;->killdock()V

    .line 291
    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # invokes: Lcom/lge/dockservice/DockWindowService;->removeViewInUiThread(Landroid/view/View;)V
    invoke-static {v3, v2}, Lcom/lge/dockservice/DockWindowService;->access$600(Lcom/lge/dockservice/DockWindowService;Landroid/view/View;)V

    .line 296
    :goto_1
    return-void

    .line 294
    :cond_1
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t find dockview for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/app/floating/FloatingFunction$Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public undock(Ljava/lang/String;II)V
    .locals 3
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "undockPosX"    # I
    .param p3, "undockPosY"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 220
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle request for undock : ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService;->access$400(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/dockservice/DockWindowService$1$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/lge/dockservice/DockWindowService$1$1;-><init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 249
    return-void
.end method

.method public undockAtCenter(Ljava/lang/String;)V
    .locals 2
    .param p1, "activityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 256
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handle request for undockAtCenter"

    invoke-static {v0, v1}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService;->access$400(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/dockservice/DockWindowService$1$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/dockservice/DockWindowService$1$2;-><init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method

.method public updateIconImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/lge/dockservice/DockWindowService;->access$400(Lcom/lge/dockservice/DockWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/lge/dockservice/DockWindowService$1$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/dockservice/DockWindowService$1$3;-><init>(Lcom/lge/dockservice/DockWindowService$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method
