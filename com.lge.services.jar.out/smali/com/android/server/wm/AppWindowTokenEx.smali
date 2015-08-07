.class Lcom/android/server/wm/AppWindowTokenEx;
.super Lcom/android/server/wm/AppWindowToken;
.source "AppWindowTokenEx.java"


# instance fields
.field isSplitFullScreen:Z

.field mWasSplited:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V
    .locals 2
    .param p1, "_service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "_token"    # Landroid/view/IApplicationToken;
    .param p3, "voiceInteraction"    # Z

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/AppWindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IApplicationToken;Z)V

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowTokenEx;->isSplitFullScreen:Z

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/AppWindowTokenEx;->mWasSplited:Z

    .line 13
    const-string v0, "WindowStateEx"

    const-string v1, "AppWindowTokenEx init.. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    return-void
.end method
