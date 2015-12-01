.class Lcom/lge/camera/command/ShowGallery$1$1;
.super Ljava/lang/Object;
.source "ShowGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/ShowGallery$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/camera/command/ShowGallery$1;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/ShowGallery$1;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/lge/camera/command/ShowGallery$1$1;->this$1:Lcom/lge/camera/command/ShowGallery$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lge/camera/command/ShowGallery$1$1;->this$1:Lcom/lge/camera/command/ShowGallery$1;

    iget-object v0, v0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    iget-object v0, v0, Lcom/lge/camera/command/ShowGallery;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/lge/camera/command/ShowGallery$1$1;->this$1:Lcom/lge/camera/command/ShowGallery$1;

    iget-object v0, v0, Lcom/lge/camera/command/ShowGallery$1;->this$0:Lcom/lge/camera/command/ShowGallery;

    # invokes: Lcom/lge/camera/command/ShowGallery;->checkUriAndShowGallery()V
    invoke-static {v0}, Lcom/lge/camera/command/ShowGallery;->access$200(Lcom/lge/camera/command/ShowGallery;)V

    .line 92
    return-void
.end method
