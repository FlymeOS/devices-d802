.class Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;
.super Ljava/lang/Object;
.source "TakePictureInRecording.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/camera/command/TakePictureInRecording;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutterCallbackInRecording"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/camera/command/TakePictureInRecording;


# direct methods
.method public constructor <init>(Lcom/lge/camera/command/TakePictureInRecording;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "CameraApp"

    const-string v1, "SHOT ShutterCallback() in LiveSnapShot"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/lge/camera/command/TakePictureInRecording$ShutterCallbackInRecording;->this$0:Lcom/lge/camera/command/TakePictureInRecording;

    iget-object v0, v0, Lcom/lge/camera/command/TakePictureInRecording;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->playShutterSound()V

    .line 169
    return-void
.end method
