.class Lcom/lge/camera/command/setting/SetOptionalParameters$2;
.super Ljava/lang/Object;
.source "SetOptionalParameters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetOptionalParameters;->setSceneModeSetting(Lcom/lge/hardware/LGCamera$LGParameters;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetOptionalParameters;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$2;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$2;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 205
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$2;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    const-string v2, "auto"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->updateSceneIndicator(ZLjava/lang/String;)V

    .line 206
    return-void
.end method
