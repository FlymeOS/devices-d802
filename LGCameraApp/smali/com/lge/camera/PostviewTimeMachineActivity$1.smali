.class Lcom/lge/camera/PostviewTimeMachineActivity$1;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;->doProcessOnResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/PostviewTimeMachineActivity;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$1;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$1;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$1;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    # invokes: Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineShotAnimation()V
    invoke-static {v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$000(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    .line 128
    return-void
.end method
