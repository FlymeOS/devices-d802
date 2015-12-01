.class Lcom/lge/camera/command/setting/SetCameraGeoTag$5;
.super Ljava/lang/Object;
.source "SetCameraGeoTag.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/camera/command/setting/SetCameraGeoTag;->reSetting(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;


# direct methods
.method constructor <init>(Lcom/lge/camera/command/setting/SetCameraGeoTag;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 128
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p0}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateGpsIndicator()V

    .line 131
    iget-object v0, p0, Lcom/lge/camera/command/setting/SetCameraGeoTag$5;->this$0:Lcom/lge/camera/command/setting/SetCameraGeoTag;

    iget-object v0, v0, Lcom/lge/camera/command/setting/SetCameraGeoTag;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_tag_location"

    invoke-interface {v0, v1, v3, v3}, Lcom/lge/camera/ControllerFunction;->setPreferenceMenuEnable(Ljava/lang/String;ZZ)V

    .line 133
    return-void
.end method
