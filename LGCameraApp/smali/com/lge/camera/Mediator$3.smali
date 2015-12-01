.class Lcom/lge/camera/Mediator$3;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->checkAutoReviewForQuickView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/Mediator;


# direct methods
.method constructor <init>(Lcom/lge/camera/Mediator;)V
    .locals 0

    .prologue
    .line 3016
    iput-object p1, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3018
    iget-object v0, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 3019
    iget-object v0, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/Mediator$3;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v2}, Lcom/lge/camera/Mediator;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->setShutterButtonImage(ZI)V

    .line 3020
    return-void
.end method
