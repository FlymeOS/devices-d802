.class Lcom/lge/camera/PostviewTimeMachineActivity$5;
.super Ljava/lang/Object;
.source "PostviewTimeMachineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/PostviewTimeMachineActivity;
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
    .line 1132
    iput-object p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity$5;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$5;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I
    invoke-static {v0, v1, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->access$1100(Lcom/lge/camera/PostviewTimeMachineActivity;ZZ)I

    .line 1136
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity$5;->this$0:Lcom/lge/camera/PostviewTimeMachineActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveFinished()V

    .line 1137
    return-void
.end method
