.class Lcom/lge/camera/command/setting/SetVideoImageSize$4;
.super Ljava/lang/Object;
.source "SetVideoImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoImageSize;->showFocusAndUpdateSizeIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetVideoImageSize;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$4;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$4;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$4;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 278
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$4;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$4;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$4;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFocus()Z

    .line 282
    :cond_0
    return-void
.end method
