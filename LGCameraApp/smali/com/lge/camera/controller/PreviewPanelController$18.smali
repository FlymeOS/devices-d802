.class Lcom/lge/camera/controller/PreviewPanelController$18;
.super Ljava/lang/Object;
.source "PreviewPanelController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/PreviewPanelController;->audioCallbackTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/PreviewPanelController;

.field final synthetic val$button:Lcom/lge/camera/components/ShutterButton;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/PreviewPanelController;Lcom/lge/camera/components/ShutterButton;)V
    .locals 0

    .prologue
    .line 3458
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iput-object p2, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->val$button:Lcom/lge/camera/components/ShutterButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewPanelController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 3461
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->val$button:Lcom/lge/camera/components/ShutterButton;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 3462
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->val$button:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonClick(Lcom/lge/camera/components/ShutterButton;)V

    .line 3463
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->this$0:Lcom/lge/camera/controller/PreviewPanelController;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewPanelController$18;->val$button:Lcom/lge/camera/components/ShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/controller/PreviewPanelController;->onShutterButtonFocus(Lcom/lge/camera/components/ShutterButton;Z)V

    .line 3464
    return-void
.end method
