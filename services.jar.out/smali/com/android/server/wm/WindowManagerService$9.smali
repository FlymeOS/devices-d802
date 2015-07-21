.class Lcom/android/server/wm/WindowManagerService$9;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerService;->startMiniView(Landroid/view/IMiniViewCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 12093
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 12096
    const-string v0, "MiniView"

    const-string v1, "IMiniViewCallback\'s binder was died"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12097
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 12098
    :try_start_0
    # getter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewCallbacks:Landroid/view/IMiniViewCallbacks;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1600()Landroid/view/IMiniViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12099
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/server/wm/WindowManagerService;->checkAndClearMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;Z)Z
    invoke-static {v0, v2, v3}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$MagnificationCallbacks;Z)Z

    .line 12100
    const/4 v0, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewCallbacks:Landroid/view/IMiniViewCallbacks;
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$1602(Landroid/view/IMiniViewCallbacks;)Landroid/view/IMiniViewCallbacks;

    .line 12101
    # getter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewMagSpec:Landroid/view/MagnificationSpec;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1800()Landroid/view/MagnificationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/MagnificationSpec;->clear()V

    .line 12102
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$9;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 12104
    :cond_0
    monitor-exit v1

    .line 12105
    return-void

    .line 12104
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
