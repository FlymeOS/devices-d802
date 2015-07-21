.class Lcom/android/server/wm/WindowManagerService$8;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
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
    .line 11986
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$8;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMagnifedBoundsChanged(Landroid/graphics/Region;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Region;

    .prologue
    .line 11990
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 11994
    # getter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewCallbacks:Landroid/view/IMiniViewCallbacks;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1600()Landroid/view/IMiniViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11996
    :try_start_0
    # getter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewCallbacks:Landroid/view/IMiniViewCallbacks;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1600()Landroid/view/IMiniViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/IMiniViewCallbacks;->onRectangleOnScreenRequested(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12001
    :cond_0
    :goto_0
    return-void

    .line 11997
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRotationChanged(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 12005
    # getter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewCallbacks:Landroid/view/IMiniViewCallbacks;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1600()Landroid/view/IMiniViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 12007
    :try_start_0
    # getter for: Lcom/android/server/wm/WindowManagerService;->mMiniViewCallbacks:Landroid/view/IMiniViewCallbacks;
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->access$1600()Landroid/view/IMiniViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IMiniViewCallbacks;->onRotationChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12012
    :cond_0
    :goto_0
    return-void

    .line 12008
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onUserContextChanged()V
    .locals 0

    .prologue
    .line 12017
    return-void
.end method
