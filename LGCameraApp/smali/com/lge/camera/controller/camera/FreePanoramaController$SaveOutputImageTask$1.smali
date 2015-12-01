.class Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask$1;
.super Ljava/lang/Object;
.source "FreePanoramaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 711
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1800(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 712
    iget-object v0, p0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask$1;->this$1:Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;

    iget-object v0, v0, Lcom/lge/camera/controller/camera/FreePanoramaController$SaveOutputImageTask;->this$0:Lcom/lge/camera/controller/camera/FreePanoramaController;

    # getter for: Lcom/lge/camera/controller/camera/FreePanoramaController;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/controller/camera/FreePanoramaController;->access$1900(Lcom/lge/camera/controller/camera/FreePanoramaController;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a01a0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 715
    return-void
.end method
