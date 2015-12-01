.class Lcom/lge/camera/module/FullFrameContinuousShot$4;
.super Ljava/lang/Object;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/FullFrameContinuousShot;->stopByUserAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/module/FullFrameContinuousShot;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot$4;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$4;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 439
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot$4;->this$0:Lcom/lge/camera/module/FullFrameContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/FullFrameContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 440
    return-void
.end method
