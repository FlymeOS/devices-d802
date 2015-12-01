.class Lcom/lge/camera/module/ContinuousShot$1$4;
.super Ljava/lang/Object;
.source "ContinuousShot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/module/ContinuousShot$1;->finishContinuousShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/module/ContinuousShot$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/module/ContinuousShot$1;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot$1$4;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$4;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$4;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 247
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot$1$4;->this$1:Lcom/lge/camera/module/ContinuousShot$1;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot$1;->this$0:Lcom/lge/camera/module/ContinuousShot;

    iget-object v0, v0, Lcom/lge/camera/module/ContinuousShot;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->restartPreview(Lcom/lge/hardware/LGCamera$LGParameters;Z)V

    .line 249
    :cond_0
    return-void
.end method
