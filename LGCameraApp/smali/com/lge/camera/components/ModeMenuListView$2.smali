.class Lcom/lge/camera/components/ModeMenuListView$2;
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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ModeMenuListView;I)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/lge/camera/components/ModeMenuListView$2;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    iput p2, p0, Lcom/lge/camera/components/ModeMenuListView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView$2;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    # getter for: Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;
    invoke-static {v0}, Lcom/lge/camera/components/ModeMenuListView;->access$100(Lcom/lge/camera/components/ModeMenuListView;)Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lge/camera/components/ModeMenuListView$2;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    # getter for: Lcom/lge/camera/components/ModeMenuListView;->mModeMenuListListener:Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;
    invoke-static {v0}, Lcom/lge/camera/components/ModeMenuListView;->access$100(Lcom/lge/camera/components/ModeMenuListView;)Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/components/ModeMenuListView$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/lge/camera/components/ModeMenuListView$OnModeMenuListListener;->onTouchScrollTab(I)V

    .line 180
    :cond_0
    return-void
.end method
