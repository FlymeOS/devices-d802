.class Lcom/lge/camera/PostviewTimeMachineActivity$2$1;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewTimeMachineActivity$2;

.field final synthetic val$startIndex:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity$2;I)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;->this$1:Lcom/lge/camera/PostviewTimeMachineActivity$2;

    iput p2, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;->val$startIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;->this$1:Lcom/lge/camera/PostviewTimeMachineActivity$2;

    iget-object v0, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 484
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;->this$1:Lcom/lge/camera/PostviewTimeMachineActivity$2;

    iget-object v0, v0, Lcom/lge/camera/PostviewTimeMachineActivity$2;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$2$1;->val$startIndex:I

    # invokes: Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$800(Lcom/lge/camera/PostviewTimeMachineActivity;I)Z

    .line 485
    return-void
.end method
