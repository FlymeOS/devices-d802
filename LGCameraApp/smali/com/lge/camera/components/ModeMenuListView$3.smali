.class Lcom/lge/camera/components/ModeMenuListView$3;
.super Ljava/lang/Object;
.source "ModeMenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/ModeMenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ModeMenuListView;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ModeMenuListView;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/lge/camera/components/ModeMenuListView$3;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 271
    iget-object v1, p0, Lcom/lge/camera/components/ModeMenuListView$3;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v2, p0, Lcom/lge/camera/components/ModeMenuListView$3;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    # getter for: Lcom/lge/camera/components/ModeMenuListView;->mPointPos:I
    invoke-static {v2}, Lcom/lge/camera/components/ModeMenuListView;->access$200(Lcom/lge/camera/components/ModeMenuListView;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/components/ModeMenuListView$3;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    # getter for: Lcom/lge/camera/components/ModeMenuListView;->mFirstVisiblePos:I
    invoke-static {v3}, Lcom/lge/camera/components/ModeMenuListView;->access$300(Lcom/lge/camera/components/ModeMenuListView;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ModeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 274
    iget-object v1, p0, Lcom/lge/camera/components/ModeMenuListView$3;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v1, v4}, Lcom/lge/camera/components/ModeMenuListView;->setPressed(Z)V

    .line 276
    :cond_0
    return-void
.end method
