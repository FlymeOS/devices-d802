.class Lcom/lge/camera/command/setting/SetVideoImageSize$5;
.super Ljava/lang/Object;
.source "SetVideoImageSize.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetVideoImageSize;->setVideoStabilizationMenu([ILandroid/hardware/Camera$Parameters;)V
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
    .line 375
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$5;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$5;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 378
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetVideoImageSize$5;->this$0:Lcom/lge/camera/command/setting/SetVideoImageSize;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetVideoImageSize;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateStabilizationIndicator()V

    .line 379
    return-void
.end method
