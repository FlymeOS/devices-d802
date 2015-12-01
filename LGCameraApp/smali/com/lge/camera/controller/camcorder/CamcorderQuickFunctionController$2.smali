.class Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;
.super Ljava/lang/Object;
.source "CamcorderQuickFunctionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setMmsLimitUiQfl(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

.field final synthetic val$mmsVideo:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;Z)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    iput-boolean p2, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;->val$mmsVideo:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    # getter for: Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->access$100(Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;->this$0:Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;

    iget-boolean v1, p0, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController$2;->val$mmsVideo:Z

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/camcorder/CamcorderQuickFunctionController;->setMmsLimitUiQfl(Z)V

    .line 45
    return-void
.end method
