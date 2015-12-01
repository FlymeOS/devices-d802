.class Lcom/lge/camera/PostviewRefocusActivity$1$1;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

.field final synthetic val$refreshIdx:I


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity$1;I)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$1$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    iput p2, p0, Lcom/lge/camera/PostviewRefocusActivity$1$1;->val$refreshIdx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$1$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$1$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$1;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity$1;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    iget v1, p0, Lcom/lge/camera/PostviewRefocusActivity$1$1;->val$refreshIdx:I

    # invokes: Lcom/lge/camera/PostviewRefocusActivity;->refreshLoadCapturedImages(I)Z
    invoke-static {v0, v1}, Lcom/lge/camera/PostviewRefocusActivity;->access$700(Lcom/lge/camera/PostviewRefocusActivity;I)Z

    .line 423
    return-void
.end method
