.class Lcom/lge/camera/command/UpdateThumbnailButton$1;
.super Ljava/lang/Object;
.source "UpdateThumbnailButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/UpdateThumbnailButton;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/UpdateThumbnailButton;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/UpdateThumbnailButton;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    iget-object v0, v0, Lcom/lge/camera/command/UpdateThumbnailButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    iget-object v0, v0, Lcom/lge/camera/command/UpdateThumbnailButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 35
    iget-object v0, p0, Lcom/lge/camera/command/UpdateThumbnailButton$1;->this$0:Lcom/lge/camera/command/UpdateThumbnailButton;

    iget-object v0, v0, Lcom/lge/camera/command/UpdateThumbnailButton;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getThumbnailAndUpdateButton()V

    .line 36
    return-void
.end method
