.class Lcom/lge/camera/Mediator$13;
.super Ljava/lang/Object;
.source "Mediator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/Mediator;->checkSceneMode(Lcom/lge/hardware/LGCamera$LGParameters;ZLjava/lang/String;)V
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
    .line 5096
    iput-object p1, p0, Lcom/lge/camera/Mediator$13;->this$0:Lcom/lge/camera/Mediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5098
    iget-object v0, p0, Lcom/lge/camera/Mediator$13;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0, p0}, Lcom/lge/camera/Mediator;->removePostRunnable(Ljava/lang/Object;)V

    .line 5099
    iget-object v0, p0, Lcom/lge/camera/Mediator$13;->this$0:Lcom/lge/camera/Mediator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/Mediator;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 5100
    iget-object v0, p0, Lcom/lge/camera/Mediator$13;->this$0:Lcom/lge/camera/Mediator;

    invoke-virtual {v0}, Lcom/lge/camera/Mediator;->updateModeMenuIndicator()V

    .line 5101
    return-void
.end method
