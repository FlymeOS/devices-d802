.class Lcom/lge/camera/Mediator$6;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->showBrightnessController(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;Z)V
    .locals 0

    .prologue
    .line 3242
    iput-object p1, p0, Lcom/lge/camera/Mediator$6;->this$0:Lcom/lge/camera/Mediator;

    iput-boolean p2, p0, Lcom/lge/camera/Mediator$6;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3244
    iget-object v0, p0, Lcom/lge/camera/Mediator$6;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 3245
    iget-object v0, p0, Lcom/lge/camera/Mediator$6;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mBrightnessController:Lcom/lge/camera/controller/BrightnessController;

    iget-boolean v1, p0, Lcom/lge/camera/Mediator$6;->val$show:Z

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/BrightnessController;->showControl(Z)V

    .line 3246
    return-void
.end method
