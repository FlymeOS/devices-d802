.class Lcom/lge/camera/command/setting/SetStorage$1;
.super Ljava/lang/Object;
.source "SetStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetStorage;->updateIndicator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetStorage;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetStorage;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 81
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetStorage$1;->this$0:Lcom/lge/camera/command/setting/SetStorage;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetStorage;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateStorageIndicator()V

    .line 82
    return-void
.end method
