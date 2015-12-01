.class Lcom/lge/camera/controller/SettingController$3;
.super Ljava/lang/Object;
.source "SettingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/controller/SettingController;->setTimeMachineLimit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/controller/SettingController;


# direct methods
.method constructor <init>(Lcom/lge/camera/controller/SettingController;)V
    .locals 0

    .prologue
    .line 673
    iput-object p1, p0, Lcom/lge/camera/controller/SettingController$3;->this$0:Lcom/lge/camera/controller/SettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 675
    const-string v0, "CameraApp"

    const-string v1, "setTimeMachineLimit updateSizeIndicator"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$3;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 677
    iget-object v0, p0, Lcom/lge/camera/controller/SettingController$3;->this$0:Lcom/lge/camera/controller/SettingController;

    iget-object v0, v0, Lcom/lge/camera/controller/SettingController;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateSizeIndicator()V

    .line 678
    return-void
.end method
