.class final Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;
.super Ljava/lang/Object;
.source "LGInputEventMonitor.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LGInputEventMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LGInputEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LGInputEventMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LGInputEventMonitor;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/LGInputEventMonitor$LGInputEventListener;->this$0:Lcom/android/internal/policy/impl/LGInputEventMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 75
    return-void
.end method
