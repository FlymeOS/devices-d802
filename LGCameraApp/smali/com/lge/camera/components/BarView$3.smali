.class Lcom/lge/camera/components/BarView$3;
.super Ljava/util/TimerTask;
.source "BarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/BarView;

.field final synthetic val$actionEnd:Z

.field final synthetic val$event:Landroid/view/MotionEvent;

.field final synthetic val$others:Z

.field final synthetic val$step:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/lge/camera/components/BarView;Landroid/view/View;ILandroid/view/MotionEvent;ZZ)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/lge/camera/components/BarView$3;->this$0:Lcom/lge/camera/components/BarView;

    iput-object p2, p0, Lcom/lge/camera/components/BarView$3;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/lge/camera/components/BarView$3;->val$step:I

    iput-object p4, p0, Lcom/lge/camera/components/BarView$3;->val$event:Landroid/view/MotionEvent;

    iput-boolean p5, p0, Lcom/lge/camera/components/BarView$3;->val$others:Z

    iput-boolean p6, p0, Lcom/lge/camera/components/BarView$3;->val$actionEnd:Z

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lge/camera/components/BarView$3;->this$0:Lcom/lge/camera/components/BarView;

    iget-object v1, p0, Lcom/lge/camera/components/BarView$3;->val$v:Landroid/view/View;

    iget v2, p0, Lcom/lge/camera/components/BarView$3;->val$step:I

    iget-object v3, p0, Lcom/lge/camera/components/BarView$3;->val$event:Landroid/view/MotionEvent;

    iget-boolean v4, p0, Lcom/lge/camera/components/BarView$3;->val$others:Z

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/lge/camera/components/BarView$3;->val$actionEnd:Z

    invoke-virtual/range {v0 .. v6}, Lcom/lge/camera/components/BarView;->updateBarWithTimer(Landroid/view/View;ILandroid/view/MotionEvent;ZZZ)V

    .line 304
    return-void
.end method
