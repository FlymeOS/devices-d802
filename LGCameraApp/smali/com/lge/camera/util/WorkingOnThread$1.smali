.class Lcom/lge/camera/util/WorkingOnThread$1;
.super Ljava/lang/Object;
.source "WorkingOnThread.java"

# interfaces
.implements Lcom/lge/camera/util/ThreadWorker$OnWorkingListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/util/WorkingOnThread;->startWorker(Lcom/lge/camera/util/ThreadWorker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/util/WorkingOnThread;


# direct methods
.method constructor <init>(Lcom/lge/camera/util/WorkingOnThread;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/util/WorkingOnThread$1;->this$0:Lcom/lge/camera/util/WorkingOnThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWorkingListRemove(Lcom/lge/camera/util/ThreadWorker;)V
    .locals 1
    .param p1, "worker"    # Lcom/lge/camera/util/ThreadWorker;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/camera/util/WorkingOnThread$1;->this$0:Lcom/lge/camera/util/WorkingOnThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/WorkingOnThread;->removeWorker(Lcom/lge/camera/util/ThreadWorker;)V

    .line 38
    return-void
.end method
