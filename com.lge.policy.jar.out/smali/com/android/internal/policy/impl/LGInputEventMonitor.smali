.class Lcom/android/internal/policy/impl/LGInputEventMonitor;
.super Ljava/lang/Object;
.source "LGInputEventMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;,
        Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LGInputEventMonitor"


# instance fields
.field final MSG_DISABLE_LG_INPUTEVET_LISTENER:I

.field final MSG_ENABLE_LG_INPUTEVET_LISTENER:I

.field private isAvalableInputEventlistener:Z

.field private mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mhandler:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v0, 0x69

    iput v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->MSG_ENABLE_LG_INPUTEVET_LISTENER:I

    .line 17
    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->MSG_DISABLE_LG_INPUTEVET_LISTENER:I

    .line 26
    iput-object p2, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/lge/internal/R$bool;->config_LGInputEventListener_available:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->isAvalableInputEventlistener:Z

    .line 29
    new-instance v0, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;-><init>(Lcom/android/internal/policy/impl/LGInputEventMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mhandler:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;

    .line 30
    return-void
.end method


# virtual methods
.method disableLgeInputEventMonitor()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    .line 67
    const-string v0, "LGInputEventMonitor"

    const-string v1, "LGInputEventListener is disable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method

.method enableLgeInputEventMonitor()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;-><init>(Lcom/android/internal/policy/impl/LGInputEventMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mLGInputEventListener:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 58
    const-string v0, "LGInputEventMonitor"

    const-string v1, "LGInputEventListener is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    return-void
.end method

.method handleInputEventListener()V
    .locals 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->isAvalableInputEventlistener:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mhandler:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;->sendEmptyMessage(I)Z

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor;->mhandler:Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
