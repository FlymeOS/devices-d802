.class Lcom/lge/camera/controller/PreviewController$8;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewController;->changePreviewModeOnUiThread(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewController;

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewController;II)V
    .locals 0

    .prologue
    .line 1930
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController$8;->this$0:Lcom/lge/camera/controller/PreviewController;

    iput p2, p0, Lcom/lge/camera/controller/PreviewController$8;->val$width:I

    iput p3, p0, Lcom/lge/camera/controller/PreviewController$8;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$8;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1933
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController$8;->this$0:Lcom/lge/camera/controller/PreviewController;

    iget v1, p0, Lcom/lge/camera/controller/PreviewController$8;->val$width:I

    iget v2, p0, Lcom/lge/camera/controller/PreviewController$8;->val$height:I

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewController;->changePreviewMode(II)V

    .line 1934
    return-void
.end method
