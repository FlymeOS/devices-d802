.class Lcom/lge/camera/command/Rotate$1;
.super Ljava/lang/Object;
.source "Rotate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/Rotate;->execute(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/Rotate;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/Rotate;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/lge/camera/command/Rotate$1;->this$0:Lcom/lge/camera/command/Rotate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/camera/command/Rotate$1;->this$0:Lcom/lge/camera/command/Rotate;

    iget-object v0, v0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/lge/camera/command/Rotate$1;->this$0:Lcom/lge/camera/command/Rotate;

    iget-object v0, v0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/lge/camera/command/Rotate$1;->this$0:Lcom/lge/camera/command/Rotate;

    iget-object v0, v0, Lcom/lge/camera/command/Rotate;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    iget-object v0, p0, Lcom/lge/camera/command/Rotate$1;->this$0:Lcom/lge/camera/command/Rotate;

    # getter for: Lcom/lge/camera/command/Rotate;->animation:Z
    invoke-static {v0}, Lcom/lge/camera/command/Rotate;->access$000(Lcom/lge/camera/command/Rotate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/AppControlUtil;->rotateNavigationBarIcon(Landroid/app/Activity;II)V

    .line 67
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
