.class Lcom/lge/camera/listeners/PlanePanoramaCallback$1;
.super Ljava/lang/Object;
.source "PlanePanoramaCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/PlanePanoramaCallback;->showTakingGuiGuide([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/PlanePanoramaCallback;

.field final synthetic val$finalData:[B


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/PlanePanoramaCallback;[B)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;->this$0:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iput-object p2, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;->val$finalData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;->this$0:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v0, v0, Lcom/lge/camera/listeners/PlanePanoramaCallback;->mGet:Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallbackFunction;->perfLockAcquire()V

    .line 1041
    sget-boolean v0, Lcom/lge/camera/controller/camera/PlanePanoramaControllerBase;->IS_PREVIEW_INPUT:Z

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;->this$0:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    iget-object v1, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;->val$finalData:[B

    # invokes: Lcom/lge/camera/listeners/PlanePanoramaCallback;->doTakePreview([B)V
    invoke-static {v0, v1}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->access$000(Lcom/lge/camera/listeners/PlanePanoramaCallback;[B)V

    .line 1046
    :goto_0
    return-void

    .line 1044
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/listeners/PlanePanoramaCallback$1;->this$0:Lcom/lge/camera/listeners/PlanePanoramaCallback;

    # invokes: Lcom/lge/camera/listeners/PlanePanoramaCallback;->doTakePicture()V
    invoke-static {v0}, Lcom/lge/camera/listeners/PlanePanoramaCallback;->access$100(Lcom/lge/camera/listeners/PlanePanoramaCallback;)V

    goto :goto_0
.end method
