.class Lcom/lge/camera/components/ZoomBar$1;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/components/ZoomBar;->updateZoom(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/components/ZoomBar;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/lge/camera/components/ZoomBar;I)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iput p2, p0, Lcom/lge/camera/components/ZoomBar$1;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 148
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, v1, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, v1, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    invoke-interface {v1, p0}, Lcom/lge/camera/components/BarAction;->removePostRunnable(Ljava/lang/Runnable;)V

    .line 150
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    iget-object v1, v1, Lcom/lge/camera/components/ZoomBar;->mBarAction:Lcom/lge/camera/components/BarAction;

    const v2, 0x7f0d0256

    invoke-interface {v1, v2}, Lcom/lge/camera/components/BarAction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/ZoomProgressBar;

    .line 152
    .local v0, "progress":Lcom/lge/camera/components/ZoomProgressBar;
    if-eqz v0, :cond_0

    .line 153
    iget v1, p0, Lcom/lge/camera/components/ZoomBar$1;->val$value:I

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/ZoomProgressBar;->setProgress(I)V

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/ZoomBar$1;->this$0:Lcom/lge/camera/components/ZoomBar;

    invoke-virtual {v1}, Lcom/lge/camera/components/ZoomBar;->updateZoomText()V

    .line 157
    .end local v0    # "progress":Lcom/lge/camera/components/ZoomProgressBar;
    :cond_1
    return-void
.end method
