.class Lcom/lge/camera/components/ModeMenuListView$1;
.super Ljava/lang/Object;
.source "ModeMenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ModeMenuListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ModeMenuListView;

.field final synthetic val$performClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ModeMenuListView;Lcom/lge/camera/components/ModeMenuListView$PerformClick;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/lge/camera/components/ModeMenuListView$1;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    iput-object p2, p0, Lcom/lge/camera/components/ModeMenuListView$1;->val$performClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView$1;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v1, p0, Lcom/lge/camera/components/ModeMenuListView$1;->val$performClick:Lcom/lge/camera/components/ModeMenuListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ModeMenuListView;->post(Ljava/lang/Runnable;)Z

    .line 164
    return-void
.end method
