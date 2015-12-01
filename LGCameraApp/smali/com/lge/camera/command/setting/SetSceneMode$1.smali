.class Lcom/lge/camera/command/setting/SetSceneMode$1;
.super Ljava/lang/Object;
.source "SetSceneMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetSceneMode;->execute(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetSceneMode;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetSceneMode;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetSceneMode$1;->this$0:Lcom/lge/camera/command/setting/SetSceneMode;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetSceneMode;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 61
    return-void
.end method
