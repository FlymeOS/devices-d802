.class Lcom/lge/camera/controller/ToastController$4;
.super Ljava/lang/Object;
.source "ToastController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/ToastController;->storageToasthide(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/ToastController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/ToastController;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/lge/camera/controller/ToastController$4;->this$0:Lcom/lge/camera/controller/ToastController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController$4;->this$0:Lcom/lge/camera/controller/ToastController;

    iget-object v0, v0, Lcom/lge/camera/controller/ToastController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController$4;->this$0:Lcom/lge/camera/controller/ToastController;

    # getter for: Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;
    invoke-static {v0}, Lcom/lge/camera/controller/ToastController;->access$400(Lcom/lge/camera/controller/ToastController;)Lcom/lge/camera/util/OnScreenHint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/OnScreenHint;->cancelImmediately()V

    .line 208
    iget-object v0, p0, Lcom/lge/camera/controller/ToastController$4;->this$0:Lcom/lge/camera/controller/ToastController;

    const/4 v1, 0x0

    # setter for: Lcom/lge/camera/controller/ToastController;->mStorageToast:Lcom/lge/camera/util/OnScreenHint;
    invoke-static {v0, v1}, Lcom/lge/camera/controller/ToastController;->access$402(Lcom/lge/camera/controller/ToastController;Lcom/lge/camera/util/OnScreenHint;)Lcom/lge/camera/util/OnScreenHint;

    .line 209
    return-void
.end method
