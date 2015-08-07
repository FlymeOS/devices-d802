.class Lcom/android/server/wm/WindowManagerServiceEx$2;
.super Ljava/lang/Object;
.source "WindowManagerServiceEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowManagerServiceEx;->handleMoveScreenTaskToFront(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerServiceEx;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1505
    sget-boolean v0, Lcom/android/server/wm/WindowManagerServiceEx;->DEBUG_SPLITWINDOW:Z

    if-eqz v0, :cond_0

    .line 1506
    const-string v0, "SplitTouch"

    const-string v1, "FocusChanging by touch flag is about to change as false.. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerServiceEx$2;->this$0:Lcom/android/server/wm/WindowManagerServiceEx;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/wm/WindowManagerServiceEx;->mIsFocusChangingByTouch:Z
    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerServiceEx;->access$102(Lcom/android/server/wm/WindowManagerServiceEx;Z)Z

    .line 1508
    return-void
.end method
