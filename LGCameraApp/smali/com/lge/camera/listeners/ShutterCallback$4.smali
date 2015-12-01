.class Lcom/lge/camera/listeners/ShutterCallback$4;
.super Ljava/lang/Object;
.source "ShutterCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/listeners/ShutterCallback;->onShutter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/listeners/ShutterCallback;


# direct methods
.method constructor <init>(Lcom/lge/camera/listeners/ShutterCallback;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/lge/camera/listeners/ShutterCallback$4;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$4;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$4;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 99
    iget-object v0, p0, Lcom/lge/camera/listeners/ShutterCallback$4;->this$0:Lcom/lge/camera/listeners/ShutterCallback;

    # getter for: Lcom/lge/camera/listeners/ShutterCallback;->mGet:Lcom/lge/camera/ControllerFunction;
    invoke-static {v0}, Lcom/lge/camera/listeners/ShutterCallback;->access$000(Lcom/lge/camera/listeners/ShutterCallback;)Lcom/lge/camera/ControllerFunction;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 100
    return-void
.end method
