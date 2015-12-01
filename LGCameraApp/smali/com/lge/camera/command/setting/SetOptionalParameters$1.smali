.class Lcom/lge/camera/command/setting/SetOptionalParameters$1;
.super Ljava/lang/Object;
.source "SetOptionalParameters.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetOptionalParameters;->setFlashSetting(Lcom/lge/hardware/LGCamera$LGParameters;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetOptionalParameters;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$1;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iput-object p2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$1;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 188
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$1;->this$0:Lcom/lge/camera/command/setting/SetOptionalParameters;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetOptionalParameters;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lge/camera/command/setting/SetOptionalParameters$1;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 189
    return-void
.end method
