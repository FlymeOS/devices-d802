.class Lcom/lge/camera/module/Module$1;
.super Ljava/lang/Object;
.source "Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/Module;->checkProgressdialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/Module;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/Module;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lge/camera/module/Module$1;->this$0:Lcom/lge/camera/module/Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lge/camera/module/Module$1;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/lge/camera/module/Module$1;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/lge/camera/module/Module$1;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->deleteProgressDialog()V

    .line 121
    iget-object v0, p0, Lcom/lge/camera/module/Module$1;->this$0:Lcom/lge/camera/module/Module;

    iget-object v0, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setNeedProgressDuringCapture(Z)V

    .line 123
    :cond_0
    return-void
.end method
