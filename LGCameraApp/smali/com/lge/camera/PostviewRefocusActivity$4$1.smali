.class Lcom/lge/camera/PostviewRefocusActivity$4$1;
.super Ljava/lang/Object;
.source "PostviewRefocusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/PostviewRefocusActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/PostviewRefocusActivity$4;


# direct methods
.method constructor <init>(Lcom/lge/camera/PostviewRefocusActivity$4;)V
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/lge/camera/PostviewRefocusActivity$4$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 967
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$4$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$4;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0, p0}, Lcom/lge/camera/PostviewRefocusActivity;->removePostRunnable(Ljava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/lge/camera/PostviewRefocusActivity$4$1;->this$1:Lcom/lge/camera/PostviewRefocusActivity$4;

    iget-object v0, v0, Lcom/lge/camera/PostviewRefocusActivity$4;->this$0:Lcom/lge/camera/PostviewRefocusActivity;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewRefocusActivity;->saveFinished()V

    .line 969
    return-void
.end method
