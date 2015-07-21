.class Lcom/lge/dockservice/DockWindowService$1$5;
.super Ljava/lang/Object;
.source "DockWindowService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/dockservice/DockWindowService$1;->initDockWindow(Ljava/lang/String;Landroid/os/IBinder;Landroid/graphics/Bitmap;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/dockservice/DockWindowService$1;

.field final synthetic val$fromHandleTouch:Z

.field final synthetic val$icon:Landroid/graphics/Bitmap;

.field final synthetic val$initPointX:I

.field final synthetic val$initPointY:I

.field final synthetic val$initToShow:Z

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/lge/dockservice/DockWindowService$1;Landroid/os/IBinder;Ljava/lang/String;Landroid/graphics/Bitmap;IIZZ)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iput-object p2, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$icon:Landroid/graphics/Bitmap;

    iput p5, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointX:I

    iput p6, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointY:I

    iput-boolean p7, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initToShow:Z

    iput-boolean p8, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$fromHandleTouch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 378
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v9

    monitor-enter v9

    .line 380
    :try_start_0
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$token:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/lge/dockservice/IBaseDockWindow$Stub;->asInterface(Landroid/os/IBinder;)Lcom/lge/dockservice/IBaseDockWindow;

    move-result-object v2

    .line 381
    .local v2, "dockWindow":Lcom/lge/dockservice/IBaseDockWindow;
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 382
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " added to DockViewList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    const/4 v0, 0x0

    .line 385
    .local v0, "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :try_start_1
    new-instance v0, Lcom/lge/dockservice/DockWindowService$DockView;

    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$icon:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointX:I

    iget v6, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointY:I

    iget-boolean v7, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initToShow:Z

    invoke-direct/range {v0 .. v7}, Lcom/lge/dockservice/DockWindowService$DockView;-><init>(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/IBaseDockWindow;Ljava/lang/String;Landroid/graphics/Bitmap;IIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 392
    .restart local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :try_start_2
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {v0}, Lcom/lge/dockservice/DockWindowService$DockView;->moveToTop()V

    .line 394
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # setter for: Lcom/lge/dockservice/DockWindowService;->mTopDockView:Lcom/lge/dockservice/DockWindowService$DockView;
    invoke-static {v1, v0}, Lcom/lge/dockservice/DockWindowService;->access$1002(Lcom/lge/dockservice/DockWindowService;Lcom/lge/dockservice/DockWindowService$DockView;)Lcom/lge/dockservice/DockWindowService$DockView;

    .line 411
    .end local v0    # "dv":Lcom/lge/dockservice/DockWindowService$DockView;
    :goto_0
    monitor-exit v9

    .line 412
    :goto_1
    return-void

    .line 386
    :catch_0
    move-exception v8

    .line 387
    .local v8, "e":Landroid/os/RemoteException;
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occured : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    .line 390
    monitor-exit v9

    goto :goto_1

    .line 411
    .end local v2    # "dockWindow":Lcom/lge/dockservice/IBaseDockWindow;
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 398
    .restart local v2    # "dockWindow":Lcom/lge/dockservice/IBaseDockWindow;
    :cond_0
    :try_start_3
    # getter for: Lcom/lge/dockservice/DockWindowService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/dockservice/DockWindowService;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has already added to DockViewList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lge/app/floating/FloatingFunction$Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 400
    :try_start_4
    iget-boolean v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initToShow:Z

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    iget v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointX:I

    iget v4, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$initPointY:I

    iget-boolean v5, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$fromHandleTouch:Z

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->awake(IIZ)V
    invoke-static {v1, v3, v4, v5}, Lcom/lge/dockservice/DockWindowService$DockView;->access$900(Lcom/lge/dockservice/DockWindowService$DockView;IIZ)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 407
    :catch_1
    move-exception v8

    .line 408
    .restart local v8    # "e":Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 404
    .end local v8    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_6
    iget-object v1, p0, Lcom/lge/dockservice/DockWindowService$1$5;->this$1:Lcom/lge/dockservice/DockWindowService$1;

    iget-object v1, v1, Lcom/lge/dockservice/DockWindowService$1;->this$0:Lcom/lge/dockservice/DockWindowService;

    # getter for: Lcom/lge/dockservice/DockWindowService;->mDockViewList:Ljava/util/concurrent/ConcurrentMap;
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService;->access$100(Lcom/lge/dockservice/DockWindowService;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/dockservice/DockWindowService$1$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/dockservice/DockWindowService$DockView;

    # invokes: Lcom/lge/dockservice/DockWindowService$DockView;->sleep()V
    invoke-static {v1}, Lcom/lge/dockservice/DockWindowService$DockView;->access$1100(Lcom/lge/dockservice/DockWindowService$DockView;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0
.end method
