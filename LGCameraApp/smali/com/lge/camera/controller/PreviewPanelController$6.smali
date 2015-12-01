.class Lcom/lge/camera/controller/PreviewPanelController$6;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 2271
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2273
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$6;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    const/4 v1, 0x0

    # invokes: Lcom/lge/camera/controller/PreviewPanelController;->reviewThumbnailDoClickAction(Landroid/view/View;Z)Z
    invoke-static {v0, p1, v1}, Lcom/lge/camera/controller/PreviewPanelController;->access$400(Lcom/lge/camera/controller/PreviewPanelController;Landroid/view/View;Z)Z

    .line 2274
    return-void
.end method
