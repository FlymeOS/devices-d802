.class Lcom/lge/camera/Mediator$7;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->showBeautyshotController(Z)V
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
    .line 3251
    iput-object p1, p0, Lcom/lge/camera/Mediator$7;->this$0:Lcom/lge/camera/Mediator;

    iput-boolean p2, p0, Lcom/lge/camera/Mediator$7;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3253
    iget-object v0, p0, Lcom/lge/camera/Mediator$7;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 3254
    iget-object v0, p0, Lcom/lge/camera/Mediator$7;->this$0:Lcom/lge/camera/Mediator;

    iget-object v0, v0, Lcom/lge/camera/Mediator;->mBeautyshotController:Lcom/lge/camera/controller/BeautyshotController;

    iget-boolean v1, p0, Lcom/lge/camera/Mediator$7;->val$show:Z

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/BeautyshotController;->showControl(Z)V

    .line 3255
    iget-boolean v0, p0, Lcom/lge/camera/Mediator$7;->val$show:Z

    if-eqz v0, :cond_0

    .line 3256
    iget-object v0, p0, Lcom/lge/camera/Mediator$7;->this$0:Lcom/lge/camera/Mediator;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/lge/camera/Mediator;->setSubMenuMode(I)V

    .line 3258
    :cond_0
    return-void
.end method
