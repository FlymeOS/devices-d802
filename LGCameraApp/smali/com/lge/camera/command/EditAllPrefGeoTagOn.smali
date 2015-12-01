.class public Lcom/lge/camera/command/EditAllPrefGeoTagOn;
.super Lcom/lge/camera/command/Command;
.source "EditAllPrefGeoTagOn.java"


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 0
    .param p1, "function"    # Lcom/lge/camera/ControllerFunction;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/lge/camera/command/Command;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 22
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 26
    const-string v0, "CameraApp"

    const-string v1, "EditAllPrefGeoTagOn executed"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/lge/camera/command/EditAllPrefGeoTagOn;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0xf

    const-string v2, "key_camera_tag_location"

    const-string v3, "on"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->setAllPreferenceApply(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method
