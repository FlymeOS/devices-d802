.class Lcom/lge/camera/controller/PreviewPanelController$7;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/controller/PreviewPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;)V
    .locals 0

    .prologue
    .line 2277
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 2279
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$7;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    # invokes: Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailDoClickAction(Landroid/view/View;Z)Z
    invoke-static {v1, p1, v0}, Lcom/lge/camera/controller/PreviewPanelController;->access$400(Lcom/lge/camera/controller/PreviewPanelController;Landroid/view/View;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2282
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
