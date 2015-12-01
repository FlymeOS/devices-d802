.class Lcom/lge/camera/components/ModeMenuListView$PerformClick;
.super Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;
.source "ModeMenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/components/ModeMenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformClick"
.end annotation


# instance fields
.field mChild:Landroid/view/View;

.field mClickMotionPosition:I

.field final synthetic this$0:Lcom/lge/camera/components/ModeMenuListView;


# direct methods
.method private constructor <init>(Lcom/lge/camera/components/ModeMenuListView;)V
    .locals 1

    .prologue
    .line 293
    iput-object p1, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/camera/components/ModeMenuListView$WindowRunnnable;-><init>(Lcom/lge/camera/components/ModeMenuListView;Lcom/lge/camera/components/ModeMenuListView$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/camera/components/ModeMenuListView;Lcom/lge/camera/components/ModeMenuListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/camera/components/ModeMenuListView;
    .param p2, "x1"    # Lcom/lge/camera/components/ModeMenuListView$1;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/lge/camera/components/ModeMenuListView$PerformClick;-><init>(Lcom/lge/camera/components/ModeMenuListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 298
    iget-object v2, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v2}, Lcom/lge/camera/components/ModeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 299
    .local v0, "adapter":Landroid/widget/ListAdapter;
    iget v1, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->mClickMotionPosition:I

    .line 300
    .local v1, "motionPosition":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    invoke-virtual {v2}, Lcom/lge/camera/components/ModeMenuListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->sameWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->mChild:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->mChild:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 306
    iget-object v2, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->this$0:Lcom/lge/camera/components/ModeMenuListView;

    iget-object v3, p0, Lcom/lge/camera/components/ModeMenuListView$PerformClick;->mChild:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/lge/camera/components/ModeMenuListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 309
    :cond_0
    return-void
.end method
